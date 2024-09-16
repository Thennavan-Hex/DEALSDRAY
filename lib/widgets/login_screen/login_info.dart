import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomToggle extends StatefulWidget {
  final void Function(String otp, String deviceId, String userId) onSubmit;

  const CustomToggle({super.key, required this.onSubmit});

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  int _currentIndex = 1;
  final TextEditingController _controller = TextEditingController();

  void _handleSubmit() {
    final inputValue = _controller.text;
    final deviceId = '62b43472c84bb6dac82e0504'; // Sample ID
    final userId = '62b43547c84bb6dac82e0525'; // Sample ID

    widget.onSubmit(inputValue, deviceId, userId);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Center(
            child: ToggleSwitch(
              minWidth: 90.0,
              cornerRadius: 30.0,
              activeBgColors: [[Colors.red.shade900!], [Colors.red.shade900!]],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              initialLabelIndex: _currentIndex,
              totalSwitches: 2,
              labels: ['Phone', 'Email'],
              radiusStyle: true,
              onToggle: (index) {
                setState(() {
                  _currentIndex = index!;
                  _controller.clear();
                });
              },
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Column(
              children: [
                Container(
                  width: 250,
                  height: 50,
                  child: Text(
                    "Glad to see you!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  height: 60,
                  child: Text(
                    _currentIndex == 0
                        ? 'Please Provide Phone number'
                        : 'Please Provide Email address',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                  ),
                ),
                Container(
                  height: 90,
                  width: 250,
                  child: TextField(
                    controller: _controller,
                    keyboardType: _currentIndex == 0 ? TextInputType.phone : TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: _currentIndex == 0 ? 'Phone' : 'Email',
                    ),
                    maxLines: 1,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dealsdray/screens/dashboard.dart';

class OtpTimer extends StatefulWidget {
  const OtpTimer({super.key});

  @override
  State<OtpTimer> createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {
  late Timer _timer;
  int _remainingTime = 120; // 2 minutes

  final List<TextEditingController> _controllers = List.generate(
    4,
        (_) => TextEditingController(),
  );

  final String _dummyOtp = '1234'; // Predefined OTP

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _verifyOtp() {
    // Collect the OTP from controllers
    final otp = _controllers.map((controller) => controller.text).join();

    if (otp == _dummyOtp) {
      // Navigate to the dashboard if OTP matches
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Dashboard()),
      );
    } else {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: const Text('Invalid OTP try 1234')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final minutes = _remainingTime ~/ 60;
    final seconds = _remainingTime % 60;

    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // OTP Boxes
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              4,
                  (index) => _otpBox(index),
            ),
          ),
          SizedBox(height: 20),
          // Countdown Timer and "SEND AGAIN" button in a row
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 45, top: 30)),
              Text(
                '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Spacer(), // Takes up remaining space
              TextButton(
                onPressed: () {
                  // Logic for resend OTP
                  print("Resend OTP");
                },
                child: Text(
                  "SEND AGAIN",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // OTP box widget
  Widget _otpBox(int index) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextField(
        controller: _controllers[index],
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          counterText: '', // Removes the counter
        ),
        onChanged: (text) {
          // Automatically move to the next field when the current one is filled
          if (text.length == 1 && index < 3) {
            FocusScope.of(context).nextFocus();
          }

          // Check if all fields are filled
          if (_controllers.every((controller) => controller.text.length == 1)) {
            _verifyOtp(); // Verify OTP when all fields are filled
          }
        },
      ),
    );
  }
}

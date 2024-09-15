import 'package:flutter/material.dart';
import 'dart:async';

class OtpTimer extends StatefulWidget {
  const OtpTimer({super.key});

  @override
  State<OtpTimer> createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {
  late Timer _timer;
  int _remainingTime = 120; // 2 minutes

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
    super.dispose();
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
            children: [
              _otpBox(),
              _otpBox(),
              _otpBox(),
              _otpBox(),
            ],
          ),
          SizedBox(height: 20),
          // Countdown Timer and "SEND AGAIN" button in a row
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 45)),
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
  Widget _otpBox() {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextField(
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          counterText: '', // Removes the counter
        ),
      ),
    );
  }
}

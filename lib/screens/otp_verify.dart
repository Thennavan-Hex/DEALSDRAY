import 'package:dealsdray/widgets/login_screen//back.dart';
import 'package:dealsdray/widgets/opt_screen/otp_text.dart';
import 'package:dealsdray/widgets/opt_screen/otp_timer.dart';
import 'package:flutter/material.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({super.key});

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Back(),
          OtpText(),
          OtpTimer()
        ],
      ),
    );
  }
}

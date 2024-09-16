import 'package:dealsdray/screens/login.dart'; // Ensure this path is correct
import 'package:flutter/material.dart';
import 'package:dealsdray/widgets/opt_screen/otp_info.dart';
import 'package:dealsdray/widgets/opt_screen/otp_input.dart';
import 'package:dealsdray/widgets/opt_screen/otp_data.dart'; // Import OtpData
import 'package:dealsdray/widgets/back_button.dart'; // Import Back

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
          Back(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
          OtpText(),
          OtpData(
            inputValue: "We have sent a unique OTP number\n"
                "to your mobile:",
            isPhone: true, // Replace with actual toggle state
          ),
          OtpTimer(),
          SizedBox(height: 20), // Add spacing if needed
        ],
      ),
    );
  }
}

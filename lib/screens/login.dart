import 'package:flutter/material.dart';
import 'package:dealsdray/widgets/login_screen/login_button.dart';
import 'package:dealsdray/widgets/back_button.dart';
import 'package:dealsdray/widgets/deals_png.dart';
import 'package:dealsdray/widgets/login_screen/login_info.dart';
import 'package:dealsdray/service/login_api.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  void _handleSubmit(String inputValue, String deviceId, String userId) {
    // Call the function to send POST request
    sendOtpVerification(inputValue, deviceId, userId);
  }

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
          DealsPng(), // Images
          CustomToggle(onSubmit: _handleSubmit), //Login Input
          LoginSend() // Login Submit
        ],
      ),
    );
  }
}

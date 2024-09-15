import 'package:dealsdray/widgets/login_screen//login_send.dart';
import 'package:flutter/material.dart';
import 'package:dealsdray/widgets/login_screen//back.dart';
import 'package:dealsdray/widgets/login_screen//deals_png.dart';
import 'package:dealsdray/widgets/login_screen//toggle_button.dart'; // Import the ToggleButton widget

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Back(),
          DealsPng(),
          CustomToggle(),
          LoginSend()
        ],
      ),
    );
  }
}

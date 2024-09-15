import 'package:dealsdray/widgets/login_screen//login_send.dart';
import 'package:flutter/material.dart';
import 'package:dealsdray/widgets/back.dart';
import 'package:dealsdray/widgets/deals_png.dart';
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
          Back(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
          DealsPng(),
          CustomToggle(),
          LoginSend()
        ],
      ),
    );
  }
}

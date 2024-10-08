import 'package:dealsdray/screens/login.dart';
import 'package:dealsdray/widgets/back_button.dart';
import 'package:dealsdray/widgets/deals_png.dart';
import 'package:dealsdray/widgets/sigin_screen/sigin_button.dart';
import 'package:dealsdray/widgets/sigin_screen/siginin_info.dart';
import 'package:flutter/material.dart';

class Siginin extends StatefulWidget {
  const Siginin({super.key});

  @override
  State<Siginin> createState() => _SigininState();
}

class _SigininState extends State<Siginin> {
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
          DealsPng(), //Images
          SignInText(), //SignIn Info
          SigninSend(), //Sign Submit
        ],
      ),
    );
  }
}

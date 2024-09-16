import 'package:dealsdray/screens/login.dart';
import 'package:dealsdray/widgets/back.dart';
import 'package:dealsdray/widgets/deals_png.dart';
import 'package:dealsdray/widgets/sigin_screen/sigin_send.dart';
import 'package:dealsdray/widgets/sigin_screen/sigin_text.dart';
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
          DealsPng(),
          SignInText(),
          SigninSend(),
        ],
      ),
    );
  }
}

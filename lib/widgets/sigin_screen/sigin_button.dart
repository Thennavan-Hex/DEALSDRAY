import 'package:flutter/material.dart';

class SigninSend extends StatelessWidget {
  const SigninSend({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 250,left: 320),
      child:
      FloatingActionButton(
        backgroundColor: Colors.red.shade900,
        onPressed: () {
        },
        child: Icon(Icons.arrow_forward,color: Colors.white),
      ),
    );
  }
}

import 'package:dealsdray/screens/otp_verify.dart';
import 'package:flutter/material.dart';

class LoginSend extends StatefulWidget {
  const LoginSend({super.key});

  @override
  State<LoginSend> createState() => _LoginSendState();
}

class _LoginSendState extends State<LoginSend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          width: 250,
          height: 50,
          child: TextButton(
            onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => OtpVerify()),
                  );
            },
            child: Text("SEND CODE"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.red.shade200,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OtpText extends StatefulWidget {
  const OtpText({super.key});

  @override
  State<OtpText> createState() => _OtpTextState();
}

class _OtpTextState extends State<OtpText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Image.asset('assets/otp_phone.png',height: 200,width: 200)
          ),
          Container(
            padding: EdgeInsets.only(left: 50),
            child: Text("OTP Verfication",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
          ),
        ],
      ),
    );
  }
}

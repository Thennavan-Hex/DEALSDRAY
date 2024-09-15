import 'package:flutter/material.dart';

class SiginText extends StatefulWidget {
  const SiginText({super.key});

  @override
  State<SiginText> createState() => _SiginTextState();
}

class _SiginTextState extends State<SiginText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Text("Let's Begin!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text("Please enter your credentials to proceed",style: TextStyle(fontSize: 15)),
          ),
          Container(
            padding: EdgeInsets.only(top: 50),
            child: TextButton(
              onPressed:
              (){},
              child: Text("Your Email",maxLines: 1,),
            ),
          )
        ],
      ),
    );
  }
}

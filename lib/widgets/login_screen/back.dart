import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  const Back({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15,top: 40),
      child:Icon(Icons.arrow_back_ios_new),
    );
  }
}

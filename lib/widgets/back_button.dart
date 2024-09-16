import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  final VoidCallback onPressed;

  const Back({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, top: 40),
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios_new),
        onPressed: onPressed,
      ),
    );
  }
}

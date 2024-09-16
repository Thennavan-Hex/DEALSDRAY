import 'package:dealsdray/screens/dashboard.dart';
import 'package:dealsdray/screens/login.dart';
import 'package:dealsdray/screens/otp_verify.dart';
import 'package:dealsdray/screens/siginin.dart';
import 'package:flutter/material.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Dashboard(),
    );
  }
}

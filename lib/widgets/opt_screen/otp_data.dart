import 'package:flutter/material.dart';

class OtpData extends StatelessWidget {
  final String inputValue;
  final bool isPhone;

  const OtpData({
    Key? key,
    required this.inputValue,
    required this.isPhone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left: 50,top: 20),
      child:Text(
    isPhone
    ? '$inputValue'
        : '$inputValue',
      style: TextStyle(fontSize: 15),
    ),
    );
  }
}

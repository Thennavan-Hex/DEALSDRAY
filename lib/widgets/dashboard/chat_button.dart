import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        print('Chat button pressed');
      },
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/chat.png',
            color: Colors.white,
            height: 24,
            width: 24,
          ),
          SizedBox(width: 8),
          Text(
            'Chat',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      backgroundColor: Colors.red.shade700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}

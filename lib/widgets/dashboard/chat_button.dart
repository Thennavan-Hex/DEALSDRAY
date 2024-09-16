import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        // Handle chat button press
        print('Chat button pressed');
      },
      label: Row(
        mainAxisSize: MainAxisSize.min, // Adjusts the size of the row to fit its content
        children: [
          Image.asset(
            'assets/chat.png', // Use Image.asset for custom icons
            color: Colors.white,
            height: 24, // Adjust the height to fit well within the button
            width: 24,  // Adjust the width if needed
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
        borderRadius: BorderRadius.circular(25), // Beveled corners
      ),
    );
  }
}

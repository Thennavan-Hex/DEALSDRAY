import 'package:flutter/material.dart';

class Device extends StatelessWidget {
  const Device({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildIconWithLabel(
            icon: Icons.phone_android,
            color: Colors.indigo.shade500,
            label: 'Mobile',
          ),
          _buildIconWithLabel(
            icon: Icons.laptop_mac,
            color: Colors.green.shade400,
            label: 'Laptop',
          ),
          _buildIconWithLabel(
            icon: Icons.camera_alt_rounded,
            color: Colors.pink.shade300,
            label: 'Camera',
          ),
          _buildIconWithLabel(
            icon: Icons.lightbulb_outline,
            color: Colors.amber.shade800,
            label: 'LED',
          ),
        ],
      ),
    );
  }

  Widget _buildIconWithLabel({required IconData icon, required Color color, required String label}) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color, // Background color
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 40, // Icon size
              ),
            ),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                color: Colors.black, // Text color
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

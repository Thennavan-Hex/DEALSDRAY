import 'package:flutter/material.dart';

class Ad extends StatelessWidget {
  const Ad({super.key});

  Widget buildImageContainer(String imagePath, double height, double width) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          height: height,
          width: width,
          fit: BoxFit.cover, // Use BoxFit.cover to avoid stretching
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 200,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildImageContainer('assets/realme.jpg', 200, 300),
            buildImageContainer('assets/realme.jpg', 200, 300),
            buildImageContainer('assets/realme.jpg', 200, 300),
            // Add more images as needed
          ],
        ),
      ),
    );
  }
}

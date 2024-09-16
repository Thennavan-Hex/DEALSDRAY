import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan.shade400,
      margin: EdgeInsets.only(top: 10), // Adjust top margin as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "EXCLUSIVE FOR YOU",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: 10), // Space between text and images
          Container(
            height: 300, // Increased height for larger images
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  _buildImageContainer('assets/deals_icon.png'),
                  _buildImageContainer('assets/deals_icon.png'),
                  _buildImageContainer('assets/deals_icon.png'),
                  _buildImageContainer('assets/deals_icon.png'),
                  // Add more images as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageContainer(String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 10), // Spacing between images
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          height: 300, // Height of the images
          width: 200, // Width of the images
          fit: BoxFit.cover, // Ensure images cover the container
        ),
      ),
    );
  }
}

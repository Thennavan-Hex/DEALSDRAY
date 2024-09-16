import 'package:flutter/material.dart';

class SignInText extends StatefulWidget {
  const SignInText({super.key});

  @override
  State<SignInText> createState() => _SignInTextState();
}

class _SignInTextState extends State<SignInText> {
  bool _isPasswordHidden = true; // Controls password visibility

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            "Let's Begin!",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            "Please enter your credentials to proceed",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 50),
          // Email Field
          TextField(
            decoration: InputDecoration(
              hintText: 'Your email',
            ),
          ),
          SizedBox(height: 30),
          // Password Field with show/hide icon
          TextField(
            obscureText: _isPasswordHidden, // Toggle based on _isPasswordHidden
            decoration: InputDecoration(
              hintText: 'Create password',
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordHidden = !_isPasswordHidden; // Toggle visibility
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              hintText: 'Referral code (Optional)',
            ),
          ),
        ],
      ),
    );
  }
}

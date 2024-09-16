import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:dealsdray/screens/login.dart';
import 'package:dealsdray/service/splash_api.dart';
import 'package:dealsdray/service/device_info.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 1), // Duration of the animation
      vsync: this,
    )..repeat(); // Repeat the animation

    DeviceInfoHelper.getDeviceData().then((data) {
      SplashApi.sendDeviceData(data); // Pass data to your API method
    });

    Future.delayed(const Duration(seconds: 1), () { // Reduced delay
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/splash.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controller.value * 2 * pi,
                  child: CustomPaint(
                    painter: LoadingDotsPainter(controllerValue: _controller.value),
                    child: const SizedBox(
                      width: 100,
                      height: 100,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LoadingDotsPainter extends CustomPainter {
  final double controllerValue;

  LoadingDotsPainter({required this.controllerValue});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    const dotCount = 8;
    final radius = size.width / 3;

    for (int i = 0; i < dotCount; i++) {
      final angle = (i / dotCount) * 2 * pi;
      final offset = Offset(
        center.dx + radius * cos(angle),
        center.dy + radius * sin(angle),
      );

      double opacity = (angle < pi) ? 1.0 - (angle / pi) : 1.0;
      paint.color = Colors.red.withOpacity(opacity);
      canvas.drawCircle(offset, 5, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

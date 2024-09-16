import 'package:dealsdray/widgets/dashboard/bottom_nav.dart';
import 'package:dealsdray/widgets/dashboard/chat_button.dart';
import 'package:flutter/material.dart';
import 'package:dealsdray/widgets/dashboard/ad_slides.dart';
import 'package:dealsdray/widgets/dashboard/device_options.dart';
import 'package:dealsdray/widgets/dashboard/offers_list.dart';
import 'package:dealsdray/widgets/dashboard/kyc_verify.dart';
import 'package:dealsdray/widgets/dashboard/dashboard_appbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: DashboardAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Ad(), // Ad widget
            Kyc(), // KYC widget
            Device(), // Device widget
            Offers(), // Offers widget
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
      floatingActionButton: Chat(),
    );
  }
}

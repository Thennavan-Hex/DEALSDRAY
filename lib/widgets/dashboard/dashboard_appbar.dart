import 'package:flutter/material.dart';

class DashboardAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppbar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 8,
      shadowColor: Colors.grey.withOpacity(0.5),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      title: Container(
        width: double.infinity,
        height: 50,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  prefixIcon: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/dash_icon.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  suffixIcon: Icon(Icons.search, color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            SizedBox(width: 16),
            IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.black),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}

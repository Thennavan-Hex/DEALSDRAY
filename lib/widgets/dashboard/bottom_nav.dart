import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('Selected index: $index');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedIndex,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: _buildIcon('assets/home.png', 0),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon('assets/menu.png', 1),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon('assets/Deals.png', 2, isDeals: true),
          label: 'Deals',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon('assets/shopping-cart.png', 3),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon('assets/profile.png', 4),
          label: 'Profile',
        ),
      ],
      onTap: _onItemTapped,
    );
  }

  Widget _buildIcon(String assetPath, int index, {bool isDeals = false}) {
    return Image.asset(
      assetPath,
      height: isDeals ? 30 : 24,
      width: isDeals ? 30 : 24,
      color: _selectedIndex == index ? Colors.red : null,
    );
  }
}

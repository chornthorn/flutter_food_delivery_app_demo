import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/chat_page.dart';
import 'package:flutter_food_delivery_app/views/home_page.dart';
import 'package:flutter_food_delivery_app/views/orders_page.dart';
import 'package:flutter_food_delivery_app/views/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const String routeName = '/main_page';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // list page
  final List<Widget> _pages = [
    const HomePage(),
    const OrdersPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  // current page
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.all(16),
          height: 75,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBottomNavigationBarItem(
                icon: Icons.home,
                label: 'Home',
                index: 0,
              ),
              _buildBottomNavigationBarItem(
                icon: Icons.shopping_bag,
                label: 'Orders',
                index: 1,
              ),
              _buildBottomNavigationBarItem(
                icon: Icons.chat,
                label: 'Chat',
                index: 2,
              ),
              _buildBottomNavigationBarItem(
                icon: Icons.person,
                label: 'Profile',
                index: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // build bottom navigation bar item
  Widget _buildBottomNavigationBarItem({
    required IconData icon,
    required int index,
    required String label,
  }) {
    return InkWell(
      radius: 16,
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Colors.red.shade50 : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: _selectedIndex == index ? Colors.red : Colors.grey,
            ),
            const SizedBox(width: 3),
            if (_selectedIndex == index)
              Text(
                label,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/chat_page.dart';
import 'package:flutter_food_delivery_app/views/home_page.dart';
import 'package:flutter_food_delivery_app/views/orders_page.dart';
import 'package:flutter_food_delivery_app/views/profile_page.dart';
import 'package:animations/animations.dart';
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
      // animated when body change
      body: SafeArea(
        bottom: false,
        child: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _pages[_selectedIndex],
          transitionBuilder: (child, animation, secondaryAnimation) {
            return SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            );
            // return FadeThroughTransition(
            //   animation: animation,
            //   secondaryAnimation: secondaryAnimation,
            //   child: child,
            // );
          },
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 26,
        ),
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
      // animation when click
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        padding:   EdgeInsets.symmetric(vertical: 12, horizontal: _selectedIndex == index ? 26 : 12),
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Colors.red.shade50 : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        curve: Curves.fastLinearToSlowEaseIn,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              child: Icon(
                icon,
                color: _selectedIndex == index ? Colors.red : Colors.red.shade400,
              ),
            ),
            const SizedBox(width: 8),
            if (_selectedIndex == index)
              AnimatedContainer(
                duration: const Duration(milliseconds: 350),
                child: Text(
                  label,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

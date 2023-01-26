import 'package:flutter/material.dart';
import 'package:task_manager_app/src/core/theming/shared_colors.dart';
import 'package:task_manager_app/src/shared/utils/commons.dart';

class NaviagtionScreen extends StatefulWidget {
  const NaviagtionScreen({super.key});

  @override
  State<NaviagtionScreen> createState() => _NaviagtionScreenState();
}

class _NaviagtionScreenState extends State<NaviagtionScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: SharedColors.gradientPrimary3,
        ),
        child: BottomNavigationBar(
          items: bottomNavigationBarItem,
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          selectedItemColor: SharedColors.success,
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

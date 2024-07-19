// lib/widgets/custom_bottom_bar.dart

import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/bottom_nav_item.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/search_screen.dart';

// CustomBottomBar widget that represents the bottom navigation bar with animations
class CustomBottomBar extends StatefulWidget {
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _currentIndex = 0; // Variable to keep track of the currently selected index

  // List of BottomNavItem objects to represent each item in the bottom navigation bar
  final List<BottomNavItem> _navItems = [
    BottomNavItem(
      label: 'Home',
      icon: FontAwesomeIcons.home,
      screen: HomeScreen(),
    ),
    BottomNavItem(
      label: 'Profile',
      icon: FontAwesomeIcons.user,
      screen: ProfileScreen(),
    ),
    BottomNavItem(
      label: 'Search',
      icon: FontAwesomeIcons.search,
      screen: SearchScreen(),
    ),
    BottomNavItem(
      label: 'Settings',
      icon: FontAwesomeIcons.cog,
      screen: SettingsScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the currently selected screen
      body: _navItems[_currentIndex].screen,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Action for the floating button
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF6f2dbd), // Set background color for the bottom navigation bar
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: AnimatedBottomNavigationBar(
          // Map the icons from the nav items to the bottom navigation bar
          icons: _navItems.map((item) => item.icon).toList(),
          activeIndex: _currentIndex, // Set the active index
          gapLocation: GapLocation.center, // Set the location of the gap
          notchSmoothness: NotchSmoothness.softEdge, // Smoothness of the notch
          onTap: (index) => setState(() => _currentIndex = index), // Handle tap event
          activeColor: Color(0xFFb9faf8), // Active icon color
          inactiveColor: Color(0xFFb298dc), // Inactive icon color
          backgroundColor: Color(0xFF6f2dbd), // Background color of the navigation bar
        ),
      ),
    );
  }
}

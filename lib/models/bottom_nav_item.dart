// lib/models/bottom_nav_item.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavItem {
  final String label;
  final IconData icon;
  final Widget screen;

  BottomNavItem({
    required this.label,
    required this.icon,
    required this.screen,
  });
}

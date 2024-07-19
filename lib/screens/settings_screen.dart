import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.lato(),
        ),
      ),
      backgroundColor: Color(0xFF805ebf),
      body: Center(
        child: Text(
          'Settings Screen',
          style: GoogleFonts.lato(fontSize: 24),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.lato(),
        ),
      ),
      backgroundColor: Color(0xFF805ebf),
      body: Center(
        child: Text(
          'Profile Screen',
          style: GoogleFonts.lato(fontSize: 24),
        ),
      ),
    );
  }
}

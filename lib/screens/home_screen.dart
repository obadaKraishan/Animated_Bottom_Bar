import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: GoogleFonts.lato(),
        ),
      ),
      backgroundColor: Color(0xFF805ebf),
      body: Center(
        child: Text(
          'Home Screen',
          style: GoogleFonts.lato(fontSize: 24),
        ),
      ),
    );
  }
}

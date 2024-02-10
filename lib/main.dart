import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelappg7/pages/detail_page.dart';
import 'package:travelappg7/pages/home_page.dart';
import 'package:travelappg7/pages/init_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      home: InitPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

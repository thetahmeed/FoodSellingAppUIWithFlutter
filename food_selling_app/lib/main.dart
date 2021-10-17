import 'package:flutter/material.dart';
import 'package:food_selling_app/constant/color_code_coonverter.dart';
import 'package:food_selling_app/constant/colors.dart';
import 'package:food_selling_app/ui/Home/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Selling App',
      theme: appTheme(),
      home: HomePage(),
    );
  }

  ThemeData appTheme() {
    return ThemeData(
      primarySwatch: Colors.orange,
      accentColor: Colors.orange,
      textTheme: textTheme().apply(
        bodyColor: HexColor(secondaryColor),
      ),
      iconTheme: IconThemeData(
        color: Colors.orange,
      ),
    );
  }

  TextTheme textTheme() {
    return TextTheme(
      bodyText1: GoogleFonts.poppins(),
      bodyText2: GoogleFonts.poppins(),
    );
  }
}

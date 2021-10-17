import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

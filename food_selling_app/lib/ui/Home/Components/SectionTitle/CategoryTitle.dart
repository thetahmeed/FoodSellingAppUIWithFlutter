import 'package:flutter/material.dart';
import 'package:food_selling_app/constant/color_code_coonverter.dart';
import 'package:food_selling_app/constant/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    Key? key,
    required this.title,
    required this.click,
  }) : super(key: key);

  final String title;
  final Function() click;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(
              color: HexColor(fontColor),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          InkWell(
            onTap: click,
            child: Text(
              'View All',
              style: TextStyle(
                color: HexColor(primaryColor),
                fontSize: 18,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

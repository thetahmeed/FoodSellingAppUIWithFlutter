import 'package:flutter/material.dart';
import 'package:food_selling_app/constant/color_code_coonverter.dart';
import 'package:food_selling_app/constant/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AllRestaurentsTitle extends StatelessWidget {
  const AllRestaurentsTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All Restaurants',
                style: GoogleFonts.roboto(
                  color: HexColor(fontColor),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '200+ Near you',
              ),
            ],
          ),
          PopupMenuButton(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'Value1',
                child: Text(
                  'All',
                  style: GoogleFonts.roboto(
                    color: HexColor(fontColor),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Value2',
                child: Text(
                  'Take Away',
                  style: GoogleFonts.roboto(
                    color: HexColor(secondaryColor),
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Value3',
                child: Text(
                  'Home Delivery',
                  style: GoogleFonts.roboto(
                    color: HexColor(secondaryColor),
                  ),
                ),
              ),
            ],
            child: Icon(
              Icons.tune_rounded,
              color: HexColor(fontColor),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_selling_app/constant/color_code_coonverter.dart';
import 'package:food_selling_app/constant/colors.dart';

class OffTag extends StatelessWidget {
  const OffTag({
    Key? key,
    required this.off,
  }) : super(key: key);

  final String off;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        color: HexColor(offTagColor),
      ),
      child: Text(
        off.length > 2 ? off : '$off% off',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

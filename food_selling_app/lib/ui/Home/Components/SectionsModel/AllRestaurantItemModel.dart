import 'package:flutter/material.dart';
import 'package:food_selling_app/constant/color_code_coonverter.dart';
import 'package:food_selling_app/constant/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../OffTag.dart';
import '../Rating.dart';

class AllRestaurantItemModel extends StatelessWidget {
  const AllRestaurantItemModel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Image.network(
                      'https://www.ringette.ca/crc2017/wp-content/uploads/sites/2/2015/04/mcdonalds-1024x576.jpg',
                      height: 90,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                    Positioned(top: 14, child: OffTag(off: '30')),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mc Donald’s',
                    style: GoogleFonts.roboto(
                      color: HexColor(fontColor),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'American cuisine, fast food',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Rating(rating: 5),
                ],
              ),
            ),
            Container(
              child: Center(
                child: Icon(Icons.favorite_border_rounded,
                    color: HexColor(secondaryColor)),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
      ],
    );
  }
}

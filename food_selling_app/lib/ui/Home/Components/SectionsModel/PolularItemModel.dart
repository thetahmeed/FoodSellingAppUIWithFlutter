import 'package:flutter/material.dart';
import 'package:food_selling_app/constant/color_code_coonverter.dart';
import 'package:food_selling_app/constant/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../OffTag.dart';
import '../Rating.dart';

class PolularItemModel extends StatelessWidget {
  const PolularItemModel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 84,
                  width: 84,
                  child: Container(
                    margin: EdgeInsets.only(left: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://image.freepik.com/free-photo/front-view-burger-plate-with-kitchen-towel_23-2148784443.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                child: OffTag(off: '30'),
              ),
              Positioned(
                top: 4,
                left: 96,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Burger',
                      style: GoogleFonts.roboto(
                        color: HexColor(fontColor),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Mc Donald, ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: 'New york, USA',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Rating(rating: 5),
                    Row(
                      children: [
                        Text(
                          '\$5',
                          style: GoogleFonts.roboto(
                            color: HexColor(fontColor),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '\$10',
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 6,
                bottom: 6,
                child: Icon(
                  Icons.add_rounded,
                  color: HexColor(fontColor),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 8),
      ],
    );
  }
}

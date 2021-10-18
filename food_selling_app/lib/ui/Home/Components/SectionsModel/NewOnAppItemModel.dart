import 'package:flutter/material.dart';
import 'package:food_selling_app/constant/color_code_coonverter.dart';
import 'package:food_selling_app/constant/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../OffTag.dart';
import '../Rating.dart';

class NewOnAppItemModel extends StatelessWidget {
  const NewOnAppItemModel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 230,
          width: 300,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.network(
                      'https://www.posist.com/restaurant-times/wp-content/uploads/2016/07/b-3-800x463-768x444.jpg',
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hungry Puppets',
                          style: GoogleFonts.roboto(
                            color: HexColor(fontColor),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '76A eighth evenue, New York, US',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: [
                            Rating(rating: 4),
                            SizedBox(width: 4),
                            Text('(112)', style: GoogleFonts.roboto()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Icon(
                    Icons.favorite_rounded,
                    color: HexColor(primaryColor),
                    size: 20,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                child: OffTag(off: 'Free Delivery'),
              ),
            ],
          ),
        ),
        SizedBox(width: 8),
      ],
    );
  }
}

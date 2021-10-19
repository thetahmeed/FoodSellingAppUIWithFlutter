import 'package:flutter/material.dart';
import 'package:food_selling_app/constant/color_code_coonverter.dart';
import 'package:food_selling_app/constant/colors.dart';

class CategoryItemModel extends StatelessWidget {
  const CategoryItemModel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    spreadRadius: 0,
                    blurRadius: 18,
                    offset: Offset(3, 12),
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/878/878052.png'),
                ),
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Burger',
              style: TextStyle(
                color: HexColor(fontColor),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(width: 8),
      ],
    );
  }
}

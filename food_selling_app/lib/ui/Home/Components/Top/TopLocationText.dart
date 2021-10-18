import 'package:flutter/material.dart';
import 'package:food_selling_app/constant/color_code_coonverter.dart';
import 'package:food_selling_app/constant/colors.dart';

class TopLocationText extends StatelessWidget {
  const TopLocationText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.home_rounded,
            color: HexColor(secondaryColor),
          ),
          SizedBox(width: 4),
          Text('76A eighth evenue, New York, US'),
          Spacer(),
          Stack(children: <Widget>[
            Icon(
              Icons.notifications_rounded,
              color: Colors.black,
            ),
            Positioned(
              top: 2.0,
              right: 2.0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor(backgroundColor),
                ),
                padding: EdgeInsets.all(1),
                child: Icon(
                  Icons.brightness_1,
                  size: 8.0,
                  color: HexColor(primaryColor),
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}

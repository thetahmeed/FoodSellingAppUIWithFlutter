import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final int rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(rating >= 1 ? Icons.star_rate_rounded : Icons.star_border_rounded,
            size: 20),
        Icon(rating >= 2 ? Icons.star_rate_rounded : Icons.star_border_rounded,
            size: 20),
        Icon(rating >= 3 ? Icons.star_rate_rounded : Icons.star_border_rounded,
            size: 20),
        Icon(rating >= 4 ? Icons.star_rate_rounded : Icons.star_border_rounded,
            size: 20),
        Icon(rating >= 5 ? Icons.star_rate_rounded : Icons.star_border_rounded,
            size: 20),
      ],
    );
  }
}

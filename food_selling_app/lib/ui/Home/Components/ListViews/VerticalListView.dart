import 'package:flutter/material.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({
    Key? key,
    required this.c,
  }) : super(key: key);

  final Widget c;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 4),
      scrollDirection: Axis.vertical,
      itemCount: 8,
      itemBuilder: (context, index) {
        return Column(
          children: [
            c,
            index == 8 - 1 ? Container() : Divider(),
          ],
        );
      },
    );
  }
}

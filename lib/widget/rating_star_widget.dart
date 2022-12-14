import 'package:flutter/material.dart';

class ratingStateWidget extends StatelessWidget {
  final int rating;
  const ratingStateWidget({required this.rating, super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (int i = 0; i < 5; i++) {
      children.add(i < rating
          ? Icon(
              Icons.star,
              color: Colors.orange,
            )
          : Icon(
              Icons.star_border,
              color: Colors.orange,
            ));
    }

    return Row(
      children: children,
    );
  }
}

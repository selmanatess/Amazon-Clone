import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class costWidget extends StatelessWidget {
  final Color color;
  final double cost;
  const costWidget({super.key, required this.color, required this.cost});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          (cost.toInt().toString()),
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w800, color: color),
        ),
        Text(
          "," + (cost - cost.toInt()).toString(),
          style: TextStyle(
              fontSize: 25,
              fontFeatures: [FontFeature.superscripts()],
              color: color),
        ),
        Text(
          "₺",
          style: TextStyle(
              fontSize: 10,
              fontFeatures: [
                FontFeature.superscripts(),
              ],
              color: color),
        )
      ],
    );
  }
}

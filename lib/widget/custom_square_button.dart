import 'package:flutter/material.dart';

class CustomSquareButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  final double dimension;

  const CustomSquareButton(
      {super.key,
      required this.child,
      required this.color,
      required this.onPressed,
      required this.dimension});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: dimension, width: dimension,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(2))),
        child: Center(
          child: child,
        ), //Buton kenarlarına Şekil vermek iççin kullanılır
      ),
    );
  }
}

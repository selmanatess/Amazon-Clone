import 'package:amazonclonee/utils/utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostumMainButton extends StatelessWidget {
  CostumMainButton(
      {Key? key,
      required this.child,
      required this.color,
      required this.isLoading,
      required this.onPressed})
      : super(key: key);

  final Widget child;
  final Color color;
  final bool isLoading;
  final VoidCallback onPressed;

  Size screensize = Utils().getScreenSize();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: color, fixedSize: Size(screensize.width * 0.5, 40)),
      child: !isLoading
          ? child
          : const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomSimpleRounded extends StatelessWidget {
  final VoidCallback Onpressed;
  final String text;

  const CustomSimpleRounded(
      {super.key, required this.Onpressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (Onpressed),
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 1)),
        child: Text(text),
      ),
    );
  }
}

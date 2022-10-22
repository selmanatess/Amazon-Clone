import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/constants.dart';
import 'package:flutter/material.dart';

class UserdetailsBar extends StatelessWidget {
  final double offset;

  const UserdetailsBar({Key? key, required this.offset});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kAppBarHeight / 2,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: lightBackgroundaGradient,
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      )),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
        child: Row(children: [
          Icon(
            Icons.location_on_outlined,
            color: Colors.green.shade900,
          ),
          Text(
            "Teslimat Adresiniz",
            style: TextStyle(color: Colors.grey.shade900),
          )
        ]),
      ),
    );
  }
}

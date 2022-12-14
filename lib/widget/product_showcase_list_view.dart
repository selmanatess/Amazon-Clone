import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:flutter/material.dart';

class ProductsShowcaseListView extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const ProductsShowcaseListView(
      {super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    Size screensize = Utils().getScreenSize();
    double height = screensize.height / 4;
    double titleHeight = 30;
    return Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        height: height,
        width: screensize.width,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: titleHeight,
              child: Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text(
                      "Daha fazla",
                      style: TextStyle(color: activeCyanColor),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height - (titleHeight + 16),
              width: screensize.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: children,
              ),
            )
          ],
        ));
  }
}

import 'package:amazonclonee/utils/constants.dart';

import 'package:flutter/material.dart';

class CategoriesHorizontalListview extends StatelessWidget {
  const CategoriesHorizontalListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kAppBarHeight,
      width: double.infinity,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal, //kaydırma yönü ayarlama
          itemCount: categoriesList.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: (() {}),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(categoryLogos[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(categoriesList[index]),
                      )
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}

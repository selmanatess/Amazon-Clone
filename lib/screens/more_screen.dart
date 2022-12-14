import 'package:amazonclonee/utils/constants.dart';
import 'package:amazonclonee/widget/category_widget.dart';
import 'package:amazonclonee/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';

class moreScreen extends StatelessWidget {
  const moreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SearchBarWidget(
          hasBackButon: false,
          isReadOnly: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2.2 / 3.5,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15),
              itemCount: categoriesList.length,
              itemBuilder: (context, index) => CategoryWidget(index: index)),
        ));
  }
}

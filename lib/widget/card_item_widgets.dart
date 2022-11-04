import 'package:amazonclonee/utils/utils.dart';
import 'package:flutter/material.dart';

class cardItemWidget extends StatelessWidget {
  const cardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = Utils().getScreenSize();
    return Container(
      height: screensize.height / 2,
      width: screensize.width,
    );
  }
}

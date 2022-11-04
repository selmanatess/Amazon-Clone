import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:amazonclonee/widget/cost_widget.dart';
import 'package:flutter/material.dart';

class productInformationWidget extends StatelessWidget {
  final String productName;
  final double cost;
  final String sellerName;
  const productInformationWidget(
      {required this.cost,
      required this.productName,
      required this.sellerName,
      super.key});

  @override
  Widget build(BuildContext context) {
    Size scrensize = Utils().getScreenSize();
    return SizedBox(
      width: scrensize.width / 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                productName,
                maxLines: 2,
                style: const TextStyle(
                    letterSpacing: 0.4,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: costWidget(color: Colors.black, cost: cost),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: sellerName, style: TextStyle(color: activeCyanColor)),
                TextSpan(
                    text: "  tarafından satılıyor",
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 12))
              ])),
            )
          ],
        ),
      ),
    );
  }
}

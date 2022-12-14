import 'package:amazonclonee/model/product_model.dart';
import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:amazonclonee/widget/cost_widget.dart';
import 'package:amazonclonee/widget/rating_star_widget.dart';
import 'package:amazonclonee/widget/simple_product_widget.dart';
import 'package:flutter/material.dart';

class ResultsWidget extends StatelessWidget {
  final ProductModel product;
  const ResultsWidget({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = Utils().getScreenSize();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 115,
                width: screensize.width / 3,
                child: Image.network(product.url)),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                product.productName,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: screensize.width / 5,
                    child: FittedBox(
                        child: ratingStateWidget(rating: product.rating))),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    product.noOfRating.toString(),
                    style: const TextStyle(color: activeCyanColor),
                  ),
                )
              ],
            ),
            SizedBox(
                height: 20,
                child: FittedBox(
                    child: costWidget(color: Colors.red, cost: product.cost)))
          ],
        ),
      ),
    );
  }
}

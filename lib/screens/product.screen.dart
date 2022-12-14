import 'package:amazonclonee/model/product_model.dart';
import 'package:amazonclonee/model/user_details_model.dart';
import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/constants.dart';
import 'package:amazonclonee/widget/rating_star_widget.dart';
import 'package:amazonclonee/widget/search_bar_widget.dart';
import 'package:amazonclonee/widget/user_details_bar.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final ProductModel productModel;

  const ProductScreen({required this.productModel, super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const SearchBarWidget(
        hasBackButon: true,
        isReadOnly: true,
      ),
      body: Stack(children: [
        SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: kAppBarHeight / 2,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.productModel.sellerName,
                      style: TextStyle(color: activeCyanColor, fontSize: 15),
                    ),
                    Text(widget.productModel.productName)
                  ],
                ),
                ratingStateWidget(rating: widget.productModel.rating)
              ],
            ),
          ],
        )),
        UserdetailsBar(
            offset: 0,
            userDetailsModel: UserDetailModel(
                adress: "Gaziler MAhallesi 311 sokak no 15 Kepez/Antalya",
                name: "Selman Ateş"))
      ]),
    ));
  }
}

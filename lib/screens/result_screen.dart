import 'package:amazonclonee/model/product_model.dart';
import 'package:amazonclonee/widget/result_widget.dart';
import 'package:amazonclonee/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String query;
  const ResultScreen({required this.query, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(isReadOnly: false, hasBackButon: true),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "'" + query + "'",
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.black)),
                TextSpan(
                    text: "  için arama sonuçları",
                    style: TextStyle(fontSize: 17, color: Colors.black))
              ])),
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      color: Colors.white38,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: ResultsWidget(
                            product: ProductModel(
                                url:
                                    "https://cdn.pixabay.com/photo/2022/11/01/20/36/cat-7563332_640.png",
                                cost: 45000,
                                discount: 0,
                                noOfRating: 1,
                                rating: 3,
                                productName: "Mackbook Bilgisayar",
                                sellerName: "Bahri DOĞRU",
                                sellerUid: "31",
                                uid: "31")),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

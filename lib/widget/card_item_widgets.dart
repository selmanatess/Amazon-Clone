import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:amazonclonee/widget/custom_simple_rounded_button.dart';
import 'package:amazonclonee/widget/custom_square_button.dart';
import 'package:amazonclonee/widget/product_information.dart';
import 'package:flutter/material.dart';

class Carditemwidget extends StatelessWidget {
  const Carditemwidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = Utils().getScreenSize();
    return Padding(
      padding: const EdgeInsets.all(29.0),
      child: Container(
        height: screensize.height / 2,
        width: screensize.width,
        decoration: const BoxDecoration(
            color: backgroundColor,
            border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
        child: Column(
          children: [
            Expanded(
              // ignore: sort_child_properties_last
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screensize.width / 3,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Center(
                          child: Image.network(
                              "https://media.istockphoto.com/id/479297758/tr/foto%C4%9Fraf/blue-flip-flops-isolated.jpg?s=612x612&w=0&k=20&c=H9-0hvgZSoX6_jOItYmzrFj3o0oaC7YAY35frKcizvo="),
                        ),
                      ),
                    ),
                    ProductInformationWidget(
                        cost: 100,
                        productName:
                            "Tatillerin vazgeçilmezi parmak arası deniz terliği",
                        sellerName: "Ramazan Acar") //
                  ],
                ),
              ),
              flex: 3,
            ),
            Expanded(
              flex: 1,
              child: Row(children: [
                CustomSquareButton(
                    child: Icon(Icons.remove),
                    color: Colors.grey.shade800,
                    onPressed: () {},
                    dimension: 50),
                CustomSquareButton(
                    child: Text(
                      "0",
                      style: TextStyle(
                          color: activeCyanColor, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.white,
                    onPressed: () {},
                    dimension: 50),
                CustomSquareButton(
                    child: Icon(Icons.add),
                    color: Colors.grey.shade800,
                    onPressed: () {},
                    dimension: 50),
              ]),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        CustomSimpleRounded(Onpressed: (() {}), text: "Sil"),
                        SizedBox(
                          width: 10,
                        ),
                        CustomSimpleRounded(
                            Onpressed: (() {}), text: "Daha sonra kaydet ")
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

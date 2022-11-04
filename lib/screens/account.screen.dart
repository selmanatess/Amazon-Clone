import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/constants.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:amazonclonee/widget/account_screen_app_bar.dart';
import 'package:amazonclonee/widget/costum_main_button.dart';
import 'package:amazonclonee/widget/product_showcase_list_view.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class accountScreen extends StatefulWidget {
  const accountScreen({super.key});

  @override
  State<accountScreen> createState() => _accountScreenState();
}

// ignore: camel_case_types
class _accountScreenState extends State<accountScreen> {
  Size screensize = Utils().getScreenSize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AccountScreenAppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: screensize.height,
          width: screensize.width,
          child: Column(
            children: [
              introdactionWidget(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CostumMainButton(
                    child: Text(
                      "Giriş Yap",
                      style: TextStyle(color: Colors.black),
                    ),
                    color: Colors.orange,
                    isLoading: false,
                    onPressed: (() {})),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CostumMainButton(
                    child: Text(
                      "Satılanlar",
                      style: TextStyle(color: Colors.black),
                    ),
                    color: yellowColor,
                    isLoading: false,
                    onPressed: (() {})),
              ),
              ProductsShowcaseListView(
                  title: "Siparişleriniz", children: siparislerim),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sipariş Taleplerim",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      tammalanansiparisler[index],
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Adress:Dünyada bir yerde"),
                    trailing: IconButton(
                      icon: Icon(Icons.check),
                      onPressed: (() {}),
                    ),
                  );
                },
                itemCount: tammalanansiparisler.length,
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class introdactionWidget extends StatelessWidget {
  const introdactionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kAppBarHeight / 2,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: backgroundGradient,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: Container(
        height: kAppBarHeight / 2,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.white,
          Colors.white.withOpacity(0.000000001) //Bulanııklaştırma yapma
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Merhaba,  ",
                    style:
                        TextStyle(color: Colors.grey.shade800, fontSize: 27)),
                TextSpan(
                    text: "Selman",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 27,
                        fontWeight: FontWeight.bold))
              ])),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

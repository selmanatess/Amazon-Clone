import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/constants.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:amazonclonee/widget/account_screen_app_bar.dart';
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
              Container(
                height: kAppBarHeight / 2,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: backgroundGradient,
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight)),
                child: Container(
                  height: kAppBarHeight / 2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.white,
                    Colors.white
                        .withOpacity(0.000000001) //Bulanııklaştırma yapma
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
                              style: TextStyle(
                                  color: Colors.grey.shade800, fontSize: 27)),
                          TextSpan(
                              text: "Selman",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold))
                        ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png"),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

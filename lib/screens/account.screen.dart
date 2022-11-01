import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/constants.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:amazonclonee/widget/account_screen_app_bar.dart';
import 'package:flutter/material.dart';

class accountScreen extends StatefulWidget {
  const accountScreen({super.key});

  @override
  State<accountScreen> createState() => _accountScreenState();
}

class _accountScreenState extends State<accountScreen> {
  Size screensize = Utils().getScreenSize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: accountScreenAppBar(),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

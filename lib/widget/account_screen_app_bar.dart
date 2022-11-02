import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/constants.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:flutter/material.dart';

class AccountScreenAppBar extends StatefulWidget with PreferredSizeWidget {
  //Tercih Edilen Boyut, Appbar ile aynı yükseklik, genişlik, yükseklik ve his ile sizin için özel uygulama çubuğunuzu tasarlamanıza izin veren özel bir pencere öğesidir
  @override
  final Size preferredSize;
  AccountScreenAppBar({super.key})
      : preferredSize = const Size.fromHeight(kAppBarHeight);

  @override
  State<AccountScreenAppBar> createState() => _AccountScreenAppBarState();
}

class _AccountScreenAppBarState extends State<AccountScreenAppBar> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Container(
      height: kAppBarHeight,
      width: screenSize.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: backgroundGradient,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Image.network(
            amazonLogoUrl,
            height: kAppBarHeight * 0.7,
          ),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: (() {}),
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                ))
          ],
        )
      ]),
    );
  }
}

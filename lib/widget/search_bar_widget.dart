import 'package:amazonclonee/screens/search_screen.dart';
import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/constants.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget with PreferredSizeWidget {
  final bool isReadOnly;
  final bool hasBackButon;
  const SearchBarWidget(
      {required this.isReadOnly, required this.hasBackButon, Key? key})
      : preferredSize = const Size.fromHeight(kAppBarHeight);
  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    Size screensize = Utils().getScreenSize();
    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(color: Colors.grey, width: 2));
    return Container(
      height: kAppBarHeight,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: backgroundGradient,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, //elemanları arasında eşit boşluklar bırakır

          children: [
            hasBackButon //arama çubuğunda tıkladığında hasback true olarak çalışır ve back butonunu aktifler
                ? IconButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    icon: const Icon(Icons.arrow_back))
                : Container(),
            Container(
              width: screensize.width * 0.7,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: const Offset(0, 5)),
                ]),
                child: TextField(
                  readOnly: isReadOnly,
                  onTap: () {
                    if (isReadOnly) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SearchScreen();
                      }));
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Marka ürün veya kategori ara ",
                      fillColor: Colors.white,
                      filled: true,
                      border: border,
                      focusedBorder: border),
                ),
              ),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.mic_none_outlined))
          ]),
    );
  }
}

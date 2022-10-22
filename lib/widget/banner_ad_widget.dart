import 'dart:html';

import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/constants.dart';

import 'package:flutter/material.dart';

class BannerAdwidget extends StatefulWidget {
  const BannerAdwidget({super.key});

  @override
  State<BannerAdwidget> createState() => _BannerAdwidgetState();
}

class _BannerAdwidgetState extends State<BannerAdwidget> {
  @override
  int currentAd = 0;

  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context)
        .size; //belli bir sınıfımn ekran ölçülerini alma için kullanılır
    double smallAdHeight = screensize.width / 5;

    return GestureDetector(
      onHorizontalDragEnd: (_) {
        //reklam kaydırma veya tıklayınca değişme
        if (currentAd == largeAds.length - 1) {
          currentAd = -1;
        }
        setState(() {
          currentAd++;
        });
      },
      child: Column(
        children: [
          Stack(children: [
            Image.network(
              largeAds[currentAd],
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              top: 0,
              child: Container(
                width: screensize.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                      backgroundColor,
                      backgroundColor.withOpacity(0)
                    ])),
              ),
            ),
          ]),
          Container(
            color: backgroundColor,
            width: screensize.width,
            height: smallAdHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getSmallAdsFromIndex(0, smallAdHeight),
                getSmallAdsFromIndex(1, smallAdHeight),
                getSmallAdsFromIndex(2, smallAdHeight),
                getSmallAdsFromIndex(3, smallAdHeight),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget getSmallAdsFromIndex(int index, double height) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      height: height,
      width: height,
      decoration: ShapeDecoration(
          shadows: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5,
                spreadRadius: 1)
          ],
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(smallAds[index]),
            SizedBox(
              height: 5,
            ),
            Text(adItemNames[index])
          ],
        ),
      ),
    ),
  );
}

import 'package:amazonclonee/model/user_details_model.dart';
import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/constants.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:flutter/material.dart';

class UserdetailsBar extends StatelessWidget {
  final double offset;
  final UserDetailModel userDetailsModel;
  const UserdetailsBar(
      {Key? key, required this.offset, required this.userDetailsModel});

  @override
  Widget build(BuildContext context) {
    Size screensize = Utils().getScreenSize();
    return Positioned(
      top: -offset / 3, //Kaybolan pencere yapımı
      child: Container(
        width: screensize.width,
        height: kAppBarHeight / 2,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: lightBackgroundaGradient,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.location_on_outlined,
                color: Colors.green.shade900,
              ),
            ),
            SizedBox(
              width: screensize.width * 0.8,
              child: Text(
                "Teslimat Adresiniz: ${userDetailsModel.name}-${userDetailsModel.adress} ",
                maxLines: 1,
                overflow: TextOverflow
                    .ellipsis, //Textteki taşan karakterleri nokta yapar
                style: TextStyle(color: Colors.grey.shade900),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

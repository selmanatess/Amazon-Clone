import 'package:amazonclonee/model/user_details_model.dart';
import 'package:amazonclonee/utils/constants.dart';
import 'package:amazonclonee/widget/banner_ad_widget.dart';
import 'package:amazonclonee/widget/categorieies_horizontal_list_view_bar.dart';
import 'package:amazonclonee/widget/product_showcase_list_view.dart';
import 'package:amazonclonee/widget/search_bar_widget.dart';
import 'package:amazonclonee/widget/user_details_bar.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();
  double offset = 0;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        offset = controller.position.pixels;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const SearchBarWidget(
          isReadOnly: true,
          hasBackButon: false,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              controller: controller,
              child: Column(
                children: [
                  const SizedBox(
                    height: kAppBarHeight / 3,
                  ),
                  const CategoriesHorizontalListview(),
                  const AdBannerWidget(),
                  ProductsShowcaseListView(
                      title: "Sebze ve Meyvelerde %70'e varan indirim",
                      children: sebzeMeyve),
                  ProductsShowcaseListView(
                      title: "Sepette %40'e varan indirim", children: evEsyasi),
                  ProductsShowcaseListView(
                      title: "Sepette %50'ye varan indirim",
                      children: teknolojiAletleri),
                ],
              ),
            ),
            UserdetailsBar(
              offset: offset,
              userDetailsModel: UserDetailModel(
                  name: "Selman",
                  adress: "Gaziler Mahallesi 315 Sokak no:15 KEPEZ/Antalya"),
            )
          ],
        ));
  }
}

import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}


class _ScreenLayoutState extends State<ScreenLayout> {
  PageController pageController = PageController();
  int currentpage = 0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  changePage(int page) {
    pageController.jumpToPage(page);
    setState(() {
      currentpage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Tab Contreller ekledim ve tab sayısı lenghte verilmeli
      child: Scaffold(
        body: PageView(controller: pageController, children: screens),
        //aşağaıdaki sekmeler
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey.shade400, width: 1),
            ),
          ),
          child: TabBar(
            indicator: const BoxDecoration(
                //
                border:
                    Border(top: BorderSide(color: activeCyanColor, width: 4))),
            onTap: changePage,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Icon(
                  Icons.home_outlined,
                  color: currentpage == 0 ? activeCyanColor : Colors.black,
                ),
              ),
              Tab(
                child: Icon(Icons.account_circle_outlined,
                    color: currentpage == 1 ? activeCyanColor : Colors.black),
              ),
              Tab(
                child: Icon(Icons.shopping_cart_outlined,
                    color: currentpage == 2 ? activeCyanColor : Colors.black),
              ),
              Tab(
                child: Icon(Icons.menu,
                    color: currentpage == 3 ? activeCyanColor : Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}

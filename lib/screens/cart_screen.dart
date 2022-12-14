import 'package:amazonclonee/model/user_details_model.dart';
import 'package:amazonclonee/screens/account.screen.dart';
import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/widget/card_item_widgets.dart';
import 'package:amazonclonee/widget/costum_main_button.dart';
import 'package:amazonclonee/widget/search_bar_widget.dart';
import 'package:amazonclonee/widget/user_details_bar.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  double offset = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(
        hasBackButon: false,
        isReadOnly: true,
      ),
      body: Center(
          child: Stack(
        children: [
          Column(
            children: [
              CostumMainButton(
                  child: Text(
                    "Öğe Tarafından işlendi",
                    style: TextStyle(color: Colors.black),
                  ), //proceed to by items
                  color: yellowColor,
                  isLoading: false,
                  onPressed: (() {})),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return Carditemwidget();
                    })),
              )
            ],
          ),
        ],
      )),
    );
  }
}

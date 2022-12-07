import 'package:amazonclonee/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String query;
  const ResultScreen({required this.query, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(isReadOnly: false, hasBackButon: true),
      body: Column(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "için arama sonuçları", style: TextStyle(fontSize: 17))
          ]))
        ],
      ),
    );
  }
}

import 'package:amazonclonee/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SearchBarWidget(
        isReadOnly: false,
        hasBackButon: true,
      ),
    );
  }
}

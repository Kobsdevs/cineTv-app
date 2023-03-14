import 'package:cinetv/constants.dart';
import 'package:cinetv/screen/home/components/category_tabs.dart';
import 'package:cinetv/screen/home/components/filter_tabs.dart';
import 'package:cinetv/screen/home/components/movies.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        children: const[
          CategoryTabs(),
          FilterTabs(),
          MoviesList(),
        ],
      ),
    );
  }
}

import 'package:cinetv/constants.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String text;
  final bool selected;
  const CategoryItem({Key? key, required this.text, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        style: TextStyle(
          color: kBlackBlueColor.withOpacity(
            selected ? 1 : 0.2,
          ),
          fontSize: 32,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}

//Les tabs des différentes catégories
class CategoryTabs extends StatelessWidget {
  const CategoryTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          CategoryItem(text: "Au théâtre", selected: true),
          CategoryItem(text: "Box Office", selected: false),
          CategoryItem(text: "À venir",  selected: false),
        ],
      ),
    );
  }
}

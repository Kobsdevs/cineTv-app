import 'package:cinetv/constants.dart';
import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
  final String text;
  const FilterItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(kDefaultPadding / 1.5),
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          border: Border.all(
              color: kBlackBlueColor.withOpacity(0.3),
              width: 1.0),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
    );
  }
}

class FilterTabs extends StatelessWidget {
  const FilterTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: kDefaultPadding * 2,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            FilterItem(text: "Action"),
            FilterItem(text: "Crime"),
            FilterItem(text: "Comedie"),
            FilterItem(text: "Drame"),
            FilterItem(text: "Horreur"),
            FilterItem(text: "Suspense"),
            FilterItem(text: "Tragique"),
            FilterItem(text: "Romantique"),
          ],
        ),
      ),
    );
  }
}

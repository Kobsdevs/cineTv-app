import 'package:cinetv/constants.dart';
import 'package:cinetv/screen/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: kBlackBlueColor,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: const Icon(
              Icons.search,
              color: kBlackBlueColor,
            ),
          ),
        ],
      ),
      body: const HomeBody(),
    );
  }
}

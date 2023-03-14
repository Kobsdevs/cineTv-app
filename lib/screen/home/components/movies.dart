import 'package:cinetv/constants.dart';
import 'package:cinetv/screen/home/components/movie.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MovieItem extends StatelessWidget {
  final Movie movie;
  const MovieItem({Key? key, required this.movie}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Container(
            height: size.height * 0.4,
            width: size.width * 0.5,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kBlackBlueColor.withOpacity(0.2),
                    blurRadius: 25,
                    offset: const Offset(0, 20), // changes position of shadow
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(movie.imageUrl),
                  fit: BoxFit.cover,
                )
            ),
          ),
          const SizedBox(height: 10),
          Text(
            movie.title,
            style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: kBlackBlueColor
            ),
          ),
          Text(movie.description ,style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: kBlackBlueColor
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                SvgPicture.asset("assets/icons/star.svg"),
                Text(movie.rating.toString()),
            ],
          )
        ],
      ),
    );
  }
}


class MoviesList extends StatelessWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: movieDB.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return MovieItem(movie: movieDB[index]);
                }
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Movie {
  final String title;
  final String description;
  final String imageUrl;
  final double rating;

  Movie(
     this.title,
     this.description,
     this.imageUrl,
     this.rating);
}

List<Movie> movieDB = [
  Movie("Titanic", "Un flim de bateau", "assets/images/titanic.jpg", 4.9),
  Movie("Star Wars", "Un flim de vaisseau", "assets/images/movie2.jpg", 3.2),
  Movie("Ford v Ferrari", "Un flim de voiture", "assets/images/movie1.jpg", 4.8),

];

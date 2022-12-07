import 'package:flutter/material.dart';
import 'package:movies_app/models/movie_model/movie_model.dart';
import 'package:movies_app/pages/home_page/widgets/movie_card.dart';

class NewMoviesList extends StatelessWidget {
  const NewMoviesList({super.key,required this.movies});
  final Movie movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: movies.items?.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>  MovieCard(movieItem: movies.items![index]),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:movies_app/models/movie_model/movie_model.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movieItem});

  final Items movieItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      height: 240,
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            height: 200,
            child: (movieItem.image != null)
                ? Image.network(
                    movieItem.image!,
                    fit: BoxFit.cover,
                  )
                : Image.asset('assets/not_found.png'),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              movieItem.title ?? "title not found",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  movieItem.year ?? "not found",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  movieItem.contentRating ?? "not found",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  movieItem.runtimeStr ?? "not found",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

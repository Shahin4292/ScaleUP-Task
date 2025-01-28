import 'package:flutter/material.dart';
import '../../../model/model.dart';

class TrendingMoviesItem extends StatelessWidget {
  final Movies movies;

  const TrendingMoviesItem({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 115,
          width: 76,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(movies.imageUrl), fit: BoxFit.cover)),
        ),
        Text(
          movies.name,
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
      ],
    );
  }
}

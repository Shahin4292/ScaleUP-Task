import 'package:flutter/material.dart';
import '../../../model/model.dart';

class ContinueWatchingItem extends StatelessWidget {
  final Movies movies;

  const ContinueWatchingItem({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 98,
          width: 166,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                  image: NetworkImage(movies.imageUrl), fit: BoxFit.cover)),
        ),
        Text(
          movies.name,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }
}

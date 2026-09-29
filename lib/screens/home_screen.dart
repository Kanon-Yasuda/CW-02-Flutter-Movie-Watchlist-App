import 'package:flutter/material.dart';

import '../data/movie_data.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Movie Watchlist'),
),
body: ListView.builder(
padding: const EdgeInsets.all(16),
itemCount: sampleMovies.length,
itemBuilder: (context, index) {
final movie = sampleMovies[index];

      return Card(
        margin: const EdgeInsets.only(bottom: 16),
        child: SizedBox(
          height: 160,
          child: ListTile(
            leading: Image.asset(
              movie.posterPath,
              width: 100,
              height: 140,
              fit: BoxFit.cover,
            ),
            title: Text(movie.title),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(movie: movie),
                ),
              );
            },
          ),
        ),
      );
    },
  ),
);


}
}
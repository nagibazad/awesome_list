import 'package:flutter/material.dart';

import 'discover/screens/discover_movies_screen.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie List Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DiscoverMoviesScreen(title: 'Discover'),
    );
  }
}

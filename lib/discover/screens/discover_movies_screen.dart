import 'package:awesome_list/discover/domain/services/movie_discover_service.dart';
import 'package:awesome_list/discover/widgets/movie_listview_cell.dart';
import 'package:flutter/material.dart';
import '../domain/models/discover_movie_parser.dart';
import '../domain/models/movie.dart';

class DiscoverMoviesScreen extends StatefulWidget {
  const DiscoverMoviesScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DiscoverMoviesScreen> createState() => _DiscoverMoviesScreenState();
}

class _DiscoverMoviesScreenState extends State<DiscoverMoviesScreen> {

  List<Movie> movies = [];

  @override
  void initState() {
    super.initState();
    MovieDiscoverService service = MovieDiscoverService(parser: DiscoverMovieParser());
    service.fetchMovies(page: 1).then((value) => {
      setState(() {
        if(value != null && value.isNotEmpty == true) {
          movies = value;
        }
      })
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child:
          ListView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              return MovieListViewCell(movies[index]);
            },
          )
      ),
    );
  }
}
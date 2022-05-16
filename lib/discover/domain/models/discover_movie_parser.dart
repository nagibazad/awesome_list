
import 'package:awesome_list/discover/domain/models/null_movie.dart';

import 'movie.dart';

class DiscoverMovieParser {
  List<Movie>? parse(Map<String, dynamic> json) {
    final results = json['results'] as List<dynamic>?;
    if(results != null && results.isEmpty == false) {
      List<Movie> movies = [];
      for (var element in results) {
        final movie = Movie.fromJson(element);
        if(movie is NullMovie) {
          continue;
        }
        movies.add(movie);
      }
      return movies;
    }
    return null;
  }
}

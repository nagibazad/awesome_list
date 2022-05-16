

import 'package:awesome_list/discover/domain/models/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>?> fetchMovies({required int page}) async {
    throw UnimplementedError();
  }
}
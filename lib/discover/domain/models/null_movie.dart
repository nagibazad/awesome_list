import 'package:awesome_list/discover/domain/models/movie.dart';

class NullMovie extends Movie {
  NullMovie({
    required int id,
    required String title,
    required String originalTitle,
    required String overview,
    required String releaseDate,
    required String backdropPath,
    required String posterPath}) : super(id: id, title: title, originalTitle: originalTitle, overview: overview, releaseDate: releaseDate, backdropPath: backdropPath, posterPath: posterPath);

  factory NullMovie.createNull(){
    return NullMovie(id: -1, title: "Invalid", originalTitle: "Invalid", overview: "Invalid", releaseDate: "Invalid", backdropPath: "Invalid", posterPath: "Invalid");

  }
}
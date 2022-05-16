import 'dart:convert';

import 'package:awesome_list/discover/domain/models/null_movie.dart';

class Movie {
  int id;
  String title;
  String originalTitle;
  String overview;
  String releaseDate;
  String backdropPath;
  String posterPath;
  bool? adult;
  List<int>? genreIds;
  String? originalLanguage;
  double? popularity;

  Movie({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.overview,
    required this.releaseDate,
    required this.backdropPath,
    required this.posterPath
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    final id = json['id'] as int?;
    if(id == null) {
      return NullMovie.createNull();
    }
    final title = json['title'] as String?;
    if(title == null) {
      return NullMovie.createNull();
    }
    final originalTitle = json['original_title'] as String?;
    if(originalTitle == null) {
      return NullMovie.createNull();
    }
    final overview = json['overview'] as String?;
    if(overview == null) {
      return NullMovie.createNull();
    }
    final releaseDate = json['release_date'] as String?;
    if(releaseDate == null) {
      return NullMovie.createNull();
    }
    final backdropPath = json['backdrop_path'] as String?;
    if(backdropPath == null) {
      return NullMovie.createNull();
    }
    final posterPath = json['poster_path'] as String?;
    if(posterPath == null) {
      return NullMovie.createNull();
    }
    return Movie(id: id, title: title, originalTitle: originalTitle, overview: overview, releaseDate: releaseDate, backdropPath: backdropPath, posterPath: posterPath);
  }
}
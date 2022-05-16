import 'package:awesome_list/discover/domain/models/discover_movie_parser.dart';
import 'package:awesome_list/discover/domain/models/movie.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Parser should parse movies json', (){
    Map<String, dynamic> json = {
      "page": 1,
      "results": [{
        "adult": false,
        "backdrop_path": "/aEGiJJP91HsKVTEPy1HhmN0wRLm.jpg",
        "genre_ids": [28, 12],
        "id": 335787,
        "original_language": "en",
        "original_title": "Uncharted",
        "overview": "A young street-smart, Nathan Drake and his wisecracking partner Victor “Sully” Sullivan embark on a dangerous pursuit of “the greatest treasure never found” while also tracking clues that may lead to Nathan’s long-lost brother.",
        "popularity": 5229.045,
        "poster_path": "/tlZpSxYuBRoVJBOpUrPdQe9FmFq.jpg",
        "release_date": "2022-02-10",
        "title": "Uncharted",
        "video": false,
        "vote_average": 7.2,
        "vote_count": 1689
      }]
    };
    DiscoverMovieParser parser = DiscoverMovieParser();
    List<Movie>? movies = parser.parse(json);
    expect(movies, isNotEmpty);
  });
}
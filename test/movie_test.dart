import 'package:awesome_list/discover/domain/models/movie.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Movie object should be initialized", (){
     final movie = Movie(id: 1, title: "title", originalTitle: "originalTitle", overview: "overview", releaseDate: "releaseDate", backdropPath: "backdropPath", posterPath: "posterPath");
     expect(movie, isNotNull);
  });
}
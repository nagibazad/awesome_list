import 'package:awesome_list/discover/domain/models/movie.dart';
import 'package:awesome_list/discover/domain/models/null_movie.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Null Movie object should have -1 id", (){
    final nullMovie = NullMovie.createNull();
    expect(nullMovie.id, -1);
  });
}
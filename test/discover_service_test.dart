import 'package:awesome_list/discover/domain/models/discover_movie_parser.dart';
import 'package:awesome_list/discover/domain/services/movie_discover_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Discover api call should return list of movies", (){
    MovieDiscoverService service = MovieDiscoverService(parser: DiscoverMovieParser());
    Future future = service.fetchMovies(page: 1);
    future.then((value) =>
        expect(value, isNotNull)
    );
  });
}
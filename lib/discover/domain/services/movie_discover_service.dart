import 'package:awesome_list/discover/domain/models/movie.dart';
import 'package:awesome_list/discover/domain/repositories/movie_repository.dart';
import 'package:awesome_list/common/Constants.dart' as Constants;
import '../models/discover_movie_parser.dart';
import 'package:dio/dio.dart';

class MovieDiscoverService implements MovieRepository {

  DiscoverMovieParser parser;

  MovieDiscoverService({required this.parser});

  @override
  Future<List<Movie>?> fetchMovies({required int page}) async {
    var options = BaseOptions(
      baseUrl: Constants.BASE_URL,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    var dio = Dio(options);
    try {
      var response = await dio.request('discover/movie?api_key=de5a52667651eb2e927748f033decacf&page=$page');
      return parser.parse(response.data);
    } catch(exception) {
       throw Exception(exception.toString());
    }
  }
}
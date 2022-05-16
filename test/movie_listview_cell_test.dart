import 'package:awesome_list/discover/domain/models/movie.dart';
import 'package:awesome_list/discover/widgets/movie_listview_cell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Widget has title, overview, release date and only one image', (WidgetTester tester) async{
    Movie movie = Movie(id: 1, title: "title", originalTitle: "originalTitle", overview: "overview", releaseDate: "releaseDate", backdropPath: "backdropPath", posterPath: "posterPath");
    await tester.pumpWidget(MovieListViewCell(movie));
    expect(find.byType(Image), findsOneWidget);
    expect(find.text(movie.title), findsOneWidget);
    expect(find.text(movie.overview), findsOneWidget);
    expect(find.text(movie.releaseDate), findsOneWidget);
  });
}
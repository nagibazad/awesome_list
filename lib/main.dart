import 'package:flutter/material.dart';

void main() {
  runApp(const AwesomeListApp());
}

class AwesomeListApp extends StatelessWidget {
  const AwesomeListApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome List Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AwesomeListPage(title: 'Awesome List'),
    );
  }
}

class AwesomeListPage extends StatefulWidget {
  const AwesomeListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AwesomeListPage> createState() => _AwesomeListPageState();
}

class _AwesomeListPageState extends State<AwesomeListPage> {

  final List<String> movies = <String>['Turning Red', 'Spider-man: No Way Home', 'Encanto', 'Black Light'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:
            ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50.0,
                  child: Text('${movies[index]}'),
                );
              },
            )
        ),
    );
  }
}

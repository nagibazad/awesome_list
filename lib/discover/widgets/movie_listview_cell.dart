import 'package:awesome_list/discover/domain/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:awesome_list/common/Constants.dart' as Constants;
import 'package:cached_network_image/cached_network_image.dart';

class MovieListViewCell extends StatelessWidget {

  final Movie _movie;

  const MovieListViewCell(this._movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(padding: const EdgeInsets.all(10.0), child: Row(
        textDirection: TextDirection.ltr,
        children: [
          Padding(padding: const EdgeInsets.fromLTRB(0, 0, 10, 0), child: SizedBox(
              width: 80.0,
              height: 80.0,
              child: Image(
                  fit: BoxFit.fill,
                  image: CachedNetworkImageProvider(
                    Constants.IMAGE_BASE_URL + _movie.posterPath,
                  )
              )
          ),),
          Expanded(child: Column(
            textDirection: TextDirection.ltr,
            children: [
              Text(_movie.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0), textDirection: TextDirection.ltr,),
              Text(_movie.overview, style: const TextStyle(fontSize: 13.0), textDirection: TextDirection.ltr,),
              Text(_movie.releaseDate, style: const TextStyle(color: Colors.grey, fontSize: 12.0,),textDirection: TextDirection.ltr,)
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          )),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      )
      ),
    );
  }
}
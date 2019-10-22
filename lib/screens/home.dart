import 'package:flutter/material.dart';
import 'package:dev_casts/models/podcast.dart';

class DevCastsHome extends StatefulWidget {
  _DevCastsHomeState createState() => _DevCastsHomeState();
}

class _DevCastsHomeState extends State<DevCastsHome> {
  List<Podcast> podcasts = getPodcasts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('devCasts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(10.0),
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.2,
              children: List.generate(podcasts.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Loading',
                        arguments: {'rssFeed': podcasts[index].rssFeedUrl});
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                        placeholder: 'assets/grey_square.jpg',
                        image: podcasts[index].podcastImage,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Flexible(
                        child: Text(
                          podcasts[index].title,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

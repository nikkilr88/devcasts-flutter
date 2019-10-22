import 'package:dev_casts/services/podcast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  void _fetchPodcastData(context, rssFeedURL) async {
    Podcast podcast = Podcast();
    await podcast.fetchPodcastData(rssFeedURL);

    Navigator.pushReplacementNamed(context, '/PodcastDetails',
        arguments: podcast.getPodcastData);
  }

  @override
  Widget build(BuildContext context) {
    Map args = ModalRoute.of(context).settings.arguments;

    _fetchPodcastData(context, args['rssFeed']);

    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: SpinKitWave(
        color: Colors.blue,
        size: 50.0,
      ),
    );
  }
}

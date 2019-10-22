import 'package:dev_casts/screens/home.dart';
import 'package:dev_casts/screens/loading.dart';
import 'package:dev_casts/screens/podcast_details.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => DevCastsHome(),
        '/Loading': (context) => Loading(),
        '/PodcastDetails': (context) => PodcastDetails()
      },
    );
  }
}

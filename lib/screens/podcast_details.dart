import 'package:flutter/material.dart';

class PodcastDetails extends StatefulWidget {
  @override
  _PodcastDetailsState createState() => _PodcastDetailsState();
}

class _PodcastDetailsState extends State<PodcastDetails> {
  @override
  Widget build(BuildContext context) {
    Map podcastData = ModalRoute.of(context).settings.arguments;

    String image = podcastData['image'];
    String title = podcastData['title'];
    String author = podcastData['author'];
    String description = podcastData['description'];
    List episodes = podcastData['episodes'];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 5.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 25.0,
              ),
              FadeInImage.assetNetwork(
                placeholder: 'assets/grey_square.jpg',
                image: image,
                height: 150.0,
                width: 150.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                author,
                softWrap: true,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              RaisedButton(
                child: Text('Website'),
                onPressed: () {},
                elevation: 5.0,
              ),
              SizedBox(
                height: 12.0,
              ),
              Divider(
                color: Colors.grey[500],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 100,
                itemBuilder: (context, index) {
                  String episodeTitle = episodes[index]['title'].length > 35
                      ? episodes[index]['title'].toString().substring(0, 35) +
                          '...'
                      : episodes[index]['title'];

                  return ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text(episodeTitle),
                    trailing: Icon(
                      Icons.play_circle_outline,
                      color: Colors.grey[500],
                      size: 30.0,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

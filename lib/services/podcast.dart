import 'package:http/http.dart' as http;
import 'dart:convert';

class Podcast {
  String title;
  String author;
  String image;
  String description;
  List episodes;

  // Fetch podcast data
  void fetchPodcastData(rssFeedURL) async {
    http.Response response =
        await http.get('https://podcast-parse.glitch.me?url=$rssFeedURL');
    dynamic jsonResponse = jsonDecode(response.body);

    print('https://podcast-parse.glitch.me?url=$rssFeedURL');
    print(jsonResponse);

    title = jsonResponse['data']['title'];
    author = jsonResponse['data']['author'];
    image = jsonResponse['data']['image'];
    description = jsonResponse['data']['description']['long'];
    episodes = jsonResponse['data']['episodes'];
  }

  Map get getPodcastData => {
        'title': title,
        'author': author,
        'image': image,
        'description': description,
        'episodes': episodes
      };
}

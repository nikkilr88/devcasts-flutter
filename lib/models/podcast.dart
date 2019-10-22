class Podcast {
  String title;
  String category;
  String podcastImage;
  String rssFeedUrl;

  Podcast({this.title, this.category, this.podcastImage, this.rssFeedUrl});

  Map get getPodcastData => {
        title: title,
        category: category,
        podcastImage: podcastImage,
        rssFeedUrl: rssFeedUrl
      };
}

List<Podcast> getPodcasts() {
  return [
    Podcast(
      title: 'Syntax - Tasty Web Development Treats',
      category: 'javascript',
      podcastImage:
          'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/60/4e/d6/604ed6ba-6a5a-5faa-edf5-189a290f3aa3/source/360x360bb.jpg',
      rssFeedUrl: 'https://feed.syntax.fm/rss',
    ),
    Podcast(
      title: 'The freeCodeCamp Podcast',
      category: 'general',
      podcastImage:
          'https://is3-ssl.mzstatic.com/image/thumb/Music123/v4/de/83/f9/de83f9d5-1745-8572-56d9-b10f62824807/source/360x360bb.jpg',
      rssFeedUrl: 'http://freecodecamp.libsyn.com/rss',
    ),
    Podcast(
      title: 'Full Stack Radio',
      category: 'javascript',
      podcastImage:
          'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/91/8f/bc/918fbcc5-9e95-4a42-c8f4-50f2321fcc9d/source/360x360bb.jpg',
      rssFeedUrl: 'https://rss.simplecast.com/podcasts/279/rss',
    ),
    Podcast(
      title: 'Tech Jr',
      category: 'code newbies',
      podcastImage:
          'https://is3-ssl.mzstatic.com/image/thumb/Music113/v4/bc/ae/5d/bcae5d27-c7d9-6a89-a59f-103049db812b/source/360x360bb.jpg',
      rssFeedUrl: 'https://techjr.dev/rss.xml',
    ),
    Podcast(
      category: 'general',
      title: 'Base.cs Podcast',
      rssFeedUrl: 'http://feeds.codenewbie.org/basecs_podcast.xml',
      podcastImage:
          'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/11/79/e5/1179e5b5-3899-2c26-175f-d4ab664c5197/source/360x360bb.jpg',
    ),
    Podcast(
      category: 'code newbies',
      title: 'CodeNewbie',
      rssFeedUrl: 'http://feeds.codenewbie.org/cnpodcast.xml',
      podcastImage:
          'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/64/02/75/640275f5-5c8e-27ba-352e-3e68449b1335/source/360x360bb.jpg',
    ),
    Podcast(
      category: 'javascript',
      title: 'The Console Log',
      rssFeedUrl: 'https://theconsolelog.com/rss.xml',
      podcastImage:
          'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/43/a5/7d/43a57d0b-943b-1f77-1089-a460c9708e51/source/360x360bb.jpg',
    ),
    Podcast(
      category: 'general',
      title: 'Developer Tea',
      rssFeedUrl: 'https://rss.simplecast.com/podcasts/363/rss',
      podcastImage:
          'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/60/32/c0/6032c0e8-be92-00ed-f693-1f4ff4205bf1/source/360x360bb.jpg',
    ),
    Podcast(
      category: 'code newbies',
      title: 'La Vie en Code',
      rssFeedUrl: 'http://lavieencode.libsyn.com/rss',
      podcastImage:
          'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/06/ea/e5/06eae525-675c-d89d-8b21-b36e3d779f42/source/100x100bb.jpg',
    ),
    Podcast(
        category: 'general',
        title: 'CS50 Podcast',
        rssFeedUrl: 'https://s3.amazonaws.com/cdn.cs50.net/podcast/podcast.rss',
        podcastImage:
            'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/60/a6/3e/60a63ea5-c5ba-f211-10ce-5c027d937204/source/100x100bb.jpg')
  ];
}

// export const podcasts = [
//   {
//     category: 'javascript',
//     name: 'Syntax - Tasty Web Development Treats',
//     link: 'https://feed.syntax.fm/rss',
//     img:
//       'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/60/4e/d6/604ed6ba-6a5a-5faa-edf5-189a290f3aa3/source/100x100bb.jpg'
//   },
//   {
//     category: 'general',
//     name: 'The freeCodeCamp Podcast',
//     link: 'http://freecodecamp.libsyn.com/rss',
//     img:
//       'https://is3-ssl.mzstatic.com/image/thumb/Music123/v4/de/83/f9/de83f9d5-1745-8572-56d9-b10f62824807/source/100x100bb.jpg'
//   },
//   {
//     category: 'javascript',
//     name: 'Full Stack Radio',
//     link: 'https://rss.simplecast.com/podcasts/279/rss',
//     img:
//       'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/91/8f/bc/918fbcc5-9e95-4a42-c8f4-50f2321fcc9d/source/100x100bb.jpg'
//   },
//   {
//     category: 'code newbies',
//     name: 'Tech Jr',
//     link: 'https://techjr.dev/rss.xml',
//     img:
//       'https://is3-ssl.mzstatic.com/image/thumb/Music113/v4/bc/ae/5d/bcae5d27-c7d9-6a89-a59f-103049db812b/source/100x100bb.jpg'
//   },
//   {
//     category: 'general',
//     name: 'Base.cs Podcast',
//     link: 'http://feeds.codenewbie.org/basecs_podcast.xml',
//     img:
//       'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/11/79/e5/1179e5b5-3899-2c26-175f-d4ab664c5197/source/100x100bb.jpg'
//   },
//   {
//     category: 'code newbies',
//     name: 'CodeNewbie',
//     link: 'http://feeds.codenewbie.org/cnpodcast.xml',
//     img:
//       'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/64/02/75/640275f5-5c8e-27ba-352e-3e68449b1335/source/100x100bb.jpg'
//   },
//   {
//     category: 'javascript',
//     name: 'The Console Log',
//     link: 'https://theconsolelog.com/rss.xml',
//     img:
//       'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/43/a5/7d/43a57d0b-943b-1f77-1089-a460c9708e51/source/100x100bb.jpg'
//   },
//   {
//     category: 'general',
//     name: 'Developer Tea',
//     link: 'https://rss.simplecast.com/podcasts/363/rss',
//     img:
//       'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/60/32/c0/6032c0e8-be92-00ed-f693-1f4ff4205bf1/source/100x100bb.jpg'
//   },
//   {
//     category: 'code newbies',
//     name: 'La Vie en Code',
//     link: 'http://lavieencode.libsyn.com/rss',
//     img:
//       'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/06/ea/e5/06eae525-675c-d89d-8b21-b36e3d779f42/source/100x100bb.jpg'
//   },
//   {
//     category: 'general',
//     name: 'CS50 Podcast',
//     link: 'https://s3.amazonaws.com/cdn.cs50.net/podcast/podcast.rss',
//     img:
//       'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/60/a6/3e/60a63ea5-c5ba-f211-10ce-5c027d937204/source/100x100bb.jpg'
//   },
//   {
//     category: 'general',
//     name: 'Coding Blocks',
//     link: 'http://feeds.podtrac.com/tBPkjrcL0_m0',
//     img:
//       'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/e6/f6/2c/e6f62c12-6b26-005f-53bd-c6ac91f504ee/source/100x100bb.jpg'
//   },
//   {
//     category: 'javascript',
//     name: 'JS Party',
//     link: 'https://changelog.com/jsparty/feed',
//     img:
//       'https://is2-ssl.mzstatic.com/image/thumb/Music123/v4/18/55/87/18558757-eaf3-e4e3-023a-031ae4c716fc/source/100x100bb.jpg'
//   },
//   {
//     category: 'javascript',
//     name: 'React Podcast',
//     link: 'https://rss.simplecast.com/podcasts/6265/rss',
//     img:
//       'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/22/2b/d3/222bd331-5d17-28dd-7494-6cec6f7d07bd/source/100x100bb.jpg'
//   },
//   {
//     category: 'general',
//     name: 'The Changelog',
//     link: 'https://changelog.com/podcast/feed',
//     img:
//       'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/bd/4a/62/bd4a6284-5316-0fd2-d8b4-5ddfc1214279/source/100x100bb.jpg'
//   },
//   {
//     category: 'general',
//     name: 'Front End Happy Hour',
//     link:
//       'https://feeds.soundcloud.com/users/soundcloud:users:206137365/sounds.rss',
//     img:
//       'https://is1-ssl.mzstatic.com/image/thumb/Music113/v4/b6/94/68/b69468bd-753d-50c5-f638-a7a920a0ab16/source/100x100bb.jpg'
//   },
//   {
//     category: 'code newbies',
//     name: 'Learn to Code With Me',
//     link: 'http://learntocodewithme.libsyn.com/rss',
//     img:
//       'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/52/55/13/52551353-8aea-915c-f00d-460c6a6ea764/source/100x100bb.jpg'
//   },
//   {
//     category: 'code newbies',
//     name: 'Ladybug Podcast',
//     link: 'https://pinecast.com/feed/ladybug-podcast',
//     img:
//       'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/96/8f/50/968f5054-b35c-50f2-801a-3cc4f4d87707/source/100x100bb.jpg'
//   }
// ]

/*
Author: Harun Demir
Date: 25.07.2023
*/

import '../../models/post_model.dart';

List<Post> mockPostsList = [
  Post(
    data: Data(
      subreddit: 'FlutterDev',
      selftext: 'This is the first post in the FlutterDev subreddit.',
      title: 'Welcome to FlutterDev',
      subredditNamePrefixed: 'r/FlutterDev',
      downs: 5,
      upvoteRatio: 0.8,
      ups: 15,
      linkFlairText: 'Tutorial',
      score: 10,
      thumbnail:
          'https://b.thumbs.redditmedia.com/J-XKQk_5Yz8bsmVKdnqvTLN6jy5FSHxRa9nx-VCt3Vo.jpg',
      linkFlairBackgroundColor: "#006bbd",
      author: "JohnDoe",
      numComments: 7,
    ),
  ),
  Post(
    data: Data(
      subreddit: 'AndroidDev',
      selftext: 'Check out this amazing Android library!',
      title: 'Awesome Android Library',
      subredditNamePrefixed: 'r/AndroidDev',
      downs: 2,
      upvoteRatio: 0.9,
      ups: 20,
      linkFlairText: 'Library',
      score: 18,
      thumbnail: 'self',
      linkFlairBackgroundColor: "#007373",
      author: "JohnDoe2",
      numComments: 12,
    ),
  ),
  Post(
    data: Data(
      subreddit: 'iOSProgramming',
      selftext: 'iOS 15 is here with lots of new features!',
      title: 'iOS 15 Announcement',
      subredditNamePrefixed: 'r/iOSProgramming',
      downs: 8,
      upvoteRatio: 0.7,
      ups: 25,
      linkFlairText: 'News',
      score: 17,
      thumbnail:
          'https://b.thumbs.redditmedia.com/WBbIrhcdkkma3AfxSx49GC1G293tm4uJ7s55vzve3Zg.jpg',
      linkFlairBackgroundColor: "#ccac2b",
      author: "JohnDoe",
      numComments: 14,
    ),
  ),
  Post(
    data: Data(
      subreddit: 'WebDev',
      selftext: 'Check out this cool CSS trick!',
      title: 'CSS Magic',
      subredditNamePrefixed: 'r/WebDev',
      downs: 1,
      upvoteRatio: 0.95,
      ups: 30,
      linkFlairText: 'CSS',
      score: 29,
      thumbnail:
          'https://b.thumbs.redditmedia.com/eEHjOM-HFPdlFN9yxen0oV5YIJACRJ2FibJSUnnd9aA.jpg',
      linkFlairBackgroundColor: "#006bbd",
      author: "JohnDoe",
      numComments: 9,
    ),
  ),
  Post(
    data: Data(
      subreddit: 'Python',
      selftext: 'Python 4.0 is just around the corner!',
      title: 'Python 4.0 Sneak Peek',
      subredditNamePrefixed: 'r/Python',
      downs: 3,
      upvoteRatio: 0.85,
      ups: 22,
      linkFlairText: 'News',
      score: 19,
      thumbnail: 'self',
      linkFlairBackgroundColor: "#007373",
      author: "JohnDoe",
      numComments: 16,
    ),
  ),
];

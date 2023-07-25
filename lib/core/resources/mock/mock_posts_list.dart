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
      thumbnail: 'https://example.com/image1.png',
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
      thumbnail: 'https://example.com/image2.png',
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
      thumbnail: 'https://example.com/image3.png',
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
      thumbnail: 'https://example.com/image4.png',
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
      thumbnail: 'https://example.com/image5.png',
      numComments: 16,
    ),
  ),
];

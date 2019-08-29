import 'package:yeccolapp/models/contenulecons.dart';
import 'package:yeccolapp/utils/utils.dart';

class Feed {
  int id, userId;
  String createdAt;
  String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra.';
  String bannerImg = AvailableImages.postBanner['assetPath'];
  String userName, userImage;

  Feed(this.id, this.createdAt, this.userId, this.userName, this.userImage);
}

final List<Feed> feeds = [
  Feed(1, '19 Aug', lecons[0].id, lecons[0].name, lecons[0].photo),
  Feed(2, '20 Aug', lecons[1].id, lecons[1].name, lecons[1].photo),
  Feed(3, '22 Aug', lecons[2].id, lecons[2].name, lecons[2].photo),
  Feed(4, '1 Sept', lecons[3].id,lecons[3].name, lecons[3].photo),
];

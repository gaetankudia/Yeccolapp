import 'package:yeccolapp/models/contenucours.dart';
import 'package:yeccolapp/utils/utils.dart';

class Feedcours {
  int id, userId;
  String createdAt;
  String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra.';
  String bannerImg = AvailableImages.postBanner['assetPath'];
  String userName, userImage;

  Feedcours(this.id, this.createdAt, this.userId, this.userName, this.userImage);
}

final List<Feedcours> feeds = [
  Feedcours(1, '19 Aug', listcours[0].id, listcours[0].name, listcours[0].photo),
  Feedcours(2, '20 Aug', listcours[1].id, listcours[1].name, listcours[1].photo),
  Feedcours(3, '22 Aug', listcours[2].id, listcours[2].name, listcours[2].photo),
  Feedcours(4, '1 Sept', listcours[3].id,listcours[3].name, listcours[3].photo),
];

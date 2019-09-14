import 'package:yeccolapp/models/contenucours.dart';
import 'package:yeccolapp/utils/utils.dart';

class Feedcours {
  int id;
  String createdAt;
  String description;
  String bannerImg = AvailableImages.postBanner['assetPath'];
  String name, coursImage;

  Feedcours(this.id, this.name, this.coursImage,this.description);
}

final List<Feedcours> feeds = [
  Feedcours(listcours[0].id, listcours[0].name, listcours[0].photo,listcours[0].description),
  Feedcours(listcours[1].id, listcours[1].name, listcours[1].photo,listcours[0].description),
  Feedcours(listcours[2].id, listcours[2].name, listcours[2].photo,listcours[0].description),
  Feedcours(listcours[3].id, listcours[3].name, listcours[3].photo,listcours[0].description),
];

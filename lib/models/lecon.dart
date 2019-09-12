import 'package:yeccolapp/models/contenulecons.dart';
import 'package:yeccolapp/utils/utils.dart';

class Feedlecons {
  int id;
  String name;
  String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra.';
  String bannerImg = AvailableImages.postBanner['assetPath']; 
  String leconImage;
  Feedlecons(this.id, this.name,this.description ,this.leconImage);
}

final List<Feedlecons> feeds = [
  Feedlecons(1, listlecons[0].name,listlecons[0].description, listlecons[0].photo),
  Feedlecons(2, listlecons[1].name,listlecons[1].description, listlecons[1].photo),
  Feedlecons(3, listlecons[2].name,listlecons[2].description, listlecons[2].photo),
  Feedlecons(4, listlecons[3].name,listlecons[4].description, listlecons[3].photo),
];

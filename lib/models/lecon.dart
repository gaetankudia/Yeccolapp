import 'package:yeccolapp/models/contenulecons.dart';
import 'package:yeccolapp/utils/utils.dart';

class Feedlecons {
  int id;
  String name;
  String contenu =
      'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh.';
  String bannerImg = AvailableImages.postBanner['assetPath']; 
  String leconImage;
  Feedlecons(this.id, this.name,this.contenu ,this.leconImage);
}

final List<Feedlecons> feedslecon = [
  Feedlecons(1, listlecons[0].name,listlecons[0].contenu, listlecons[0].leconImage),
  Feedlecons(2, listlecons[1].name,listlecons[1].contenu, listlecons[1].leconImage),
  Feedlecons(3, listlecons[2].name,listlecons[2].contenu, listlecons[2].leconImage),
  Feedlecons(4, listlecons[3].name,listlecons[4].contenu, listlecons[3].leconImage),
];

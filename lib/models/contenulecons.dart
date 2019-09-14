import 'package:yeccolapp/utils/utils.dart';

class Lecon {
  int id;
  String name;
  String leconImage;
  String contenu; 
  String unread;  
  int age;

  Lecon(this.id, this.name, this.leconImage, this.contenu);
}
 

// Names generated at http://random-name-generator.info/

 
final List<Lecon> listlecons = [
  Lecon(1, 'Chap 1', AvailableImages.courslatin['assetPath'], 'F'),
  Lecon(2, 'Chap 2', AvailableImages.coursphilosophie['assetPath'], 'F'),
  Lecon(3, 'Chap 3', AvailableImages.courshistoire['assetPath'], 'M'),
  Lecon(4, 'Chap 4', AvailableImages.coursanglais['assetPath'], 'F'),
  Lecon(5, 'Chap 5', AvailableImages.coursmath['assetPath'], 'F'),

  Lecon(6, 'Chap 7', AvailableImages.courslatin['assetPath'], 'M'),
  Lecon(7, 'Chap 8', AvailableImages.courschimie['assetPath'], 'F'),
  Lecon(8, 'Chap 9', AvailableImages.coursphysique['assetPath'], 'M'),
  Lecon(9, 'Chap 10', AvailableImages.courssocaf['assetPath'], 'M'), 
];

 

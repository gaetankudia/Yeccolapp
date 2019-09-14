import 'package:yeccolapp/utils/utils.dart';

class Lecon {
  int id;
  String name;
  String leconImage;
  String contenu; 
  int unread;  
  int age;

  Lecon(this.id, this.name, this.leconImage, this.contenu, this.unread);
}
 

// Names generated at http://random-name-generator.info/
 
final List<Lecon> listlecons = [
  Lecon(1, 'Chap 1', AvailableImages.courslatin['assetPath'], 'rgrgrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',0),
  Lecon(2, 'Chap 2', AvailableImages.coursphilosophie['assetPath'], 'rgrgrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',0),
  Lecon(3, 'Chap 3', AvailableImages.courshistoire['assetPath'], 'rgrgrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',0),
  Lecon(4, 'Chap 4', AvailableImages.coursanglais['assetPath'], 'rgrgrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',0),
  Lecon(5, 'Chap 5', AvailableImages.coursmath['assetPath'], 'rgrgrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',0),

  Lecon(6, 'Chap 6', AvailableImages.courslatin['assetPath'], 'rgrgrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',0),
  Lecon(7, 'Chap 7', AvailableImages.courschimie['assetPath'], 'rgrgrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',0),
  Lecon(8, 'Chap 8', AvailableImages.coursphysique['assetPath'], 'rgrgrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',0),
  Lecon(9, 'Chap 9', AvailableImages.courssocaf['assetPath'], 'rgrgrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',0), 

];

 

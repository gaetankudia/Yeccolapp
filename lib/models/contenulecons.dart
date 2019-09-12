import 'package:yeccolapp/utils/utils.dart';

class Lecon {
  int id;
  String name;
  String photo;
  String description; 
  int age;

  Lecon(this.id, this.name, this.photo, this.description,age);
}
 

// Names generated at http://random-name-generator.info/
final List<Lecon> listlecons = [
  Lecon(1, 'Latin', AvailableImages.courslatin['assetPath'], 'F', 17),
  Lecon(2, 'Philosophie', AvailableImages.coursphilosophie['assetPath'], 'F', 24),
  Lecon(3, 'Histoire', AvailableImages.courshistoire['assetPath'], 'M', 28),
  Lecon(4, 'Anglais', AvailableImages.coursanglais['assetPath'], 'F', 25),
  Lecon(5, 'Mathématique', AvailableImages.coursmath['assetPath'], 'F', 23),

  Lecon(6, 'Latin', AvailableImages.courslatin['assetPath'], 'M', 29),
  Lecon(7, 'Chimie', AvailableImages.courschimie['assetPath'], 'F', 22),
  Lecon(8, 'Physique', AvailableImages.coursphysique['assetPath'], 'M', 23),
  Lecon(9, 'SOCAF', AvailableImages.courssocaf['assetPath'], 'M', 25), 
];

 

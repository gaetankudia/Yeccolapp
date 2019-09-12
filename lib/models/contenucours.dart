import 'package:yeccolapp/utils/utils.dart';

class Cours {
  int id;
  String name;
  String photo;
  String description; 
  int age;

  Cours(this.id, this.name, this.photo, this.description,age);
}
 

// Names generated at http://random-name-generator.info/
final List<Cours> listcours = [
  Cours(1, 'Latin', AvailableImages.courslatin['assetPath'], 'F', 17),
  Cours(2, 'Philosophie', AvailableImages.coursphilosophie['assetPath'], 'F', 24),
  Cours(3, 'Histoire', AvailableImages.courshistoire['assetPath'], 'M', 28),
  Cours(4, 'Anglais', AvailableImages.coursanglais['assetPath'], 'F', 25),
  Cours(5, 'Mathématique', AvailableImages.coursmath['assetPath'], 'F', 23),

  Cours(6, 'Latin', AvailableImages.courslatin['assetPath'], 'M', 29),
  Cours(7, 'Chimie', AvailableImages.courschimie['assetPath'], 'F', 22),
  Cours(8, 'Physique', AvailableImages.coursphysique['assetPath'], 'M', 23),
  Cours(9, 'SOCAF', AvailableImages.courssocaf['assetPath'], 'M', 25), 
];

 

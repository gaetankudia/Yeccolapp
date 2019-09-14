import 'package:yeccolapp/utils/utils.dart';

class Cours {
  int id;
  String name;
  String photo;
  String description; 

  Cours(this.id, this.name, this.photo, this.description);
}
 

// Names generated at http://random-name-generator.info/
final List<Cours> listcours = [
  Cours(1, 'Latin', AvailableImages.courslatin['assetPath'], 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum i'),
  Cours(2, 'Philosophie', AvailableImages.coursphilosophie['assetPath'], 'F'),
  Cours(3, 'Histoire', AvailableImages.courshistoire['assetPath'], 'jhyutryuioiscing elit. Vestibulum i'),
  Cours(4, 'Anglais', AvailableImages.coursanglais['assetPath'], 'F'),
  Cours(5, 'Mathématique', AvailableImages.coursmath['assetPath'], 'uytfghjkiuytghujkoelit. Vestibulum i'),

  Cours(6, 'Latin', AvailableImages.courslatin['assetPath'], 'Lorhjuythjuyhjkiujhdipiscing elit. Vestibulum i'),
  Cours(7, 'Chimie', AvailableImages.courschimie['assetPath'], 'F'),
  Cours(8, 'Physique', AvailableImages.coursphysique['assetPath'], 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum i'),
  Cours(9, 'SOCAF', AvailableImages.courssocaf['assetPath'], 'M'), 
];

 

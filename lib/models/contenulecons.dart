import 'package:yeccolapp/utils/utils.dart';

class Lecon {
  int id;
  String name;
  String photo;
  String location = 'Institut Fatima, Kin';
  String gender;
  int age;

  Lecon(this.id, this.name, this.photo, this.gender, this.age);
}


// Names generated at http://random-name-generator.info/
final List<Lecon> lecons = [
  Lecon(1, 'Latin', AvailableImages.courslatin['assetPath'], 'F', 17),
  Lecon(2, 'Philosophie', AvailableImages.coursphilosophie['assetPath'], 'F', 24),
  Lecon(3, 'Histoire', AvailableImages.courshistoire['assetPath'], 'M', 28),
  Lecon(4, 'Mathématique', AvailableImages.coursmath['assetPath'], 'F', 23),
  Lecon(5, 'Anglais', AvailableImages.coursanglais['assetPath'], 'F', 25),
  Lecon(6, 'Latin', AvailableImages.courslatin['assetPath'], 'M', 29),
  Lecon(7, 'Chimie', AvailableImages.courschimie['assetPath'], 'F', 22),
  Lecon(8, 'Physique', AvailableImages.coursphysique['assetPath'], 'M', 23),
  Lecon(9, 'SOCAF', AvailableImages.courssocaf['assetPath'], 'M', 25), 
];

final List<String> leconHobbies = [
  "Anglais", "Math", "ECM", "SOCAF"
]; 

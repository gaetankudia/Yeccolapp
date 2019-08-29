import 'package:yeccolapp/utils/utils.dart';

class User {
  int id;
  String name;
  String photo;
  String location = 'Institut Fatima, Kin';
  String gender;
  int age;

  User(this.id, this.name, this.photo, this.gender, this.age);
}


// Names generated at http://random-name-generator.info/
final List<User> users = [
  User(1, 'Elena Mbaya', AvailableImages.eleve['assetPath'], 'F', 17), 
];

final List<String> userHobbies = [
  "Dancing", "Hiking", "Singing", "Reading", "Fishing"
]; 

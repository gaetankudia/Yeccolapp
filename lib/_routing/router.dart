import 'package:flutter/material.dart';
import 'package:yeccolapp/_routing/routes.dart';
import 'package:yeccolapp/views/details/lecon_details.dart'; 
import 'package:yeccolapp/views/details/cours_details.dart';
import 'package:yeccolapp/views/details/livre_details.dart';
import 'package:yeccolapp/views/hometab.dart';
import 'package:yeccolapp/views/hometabs/home.dart';
import 'package:yeccolapp/views/homeitem/lecon.dart'; 
import 'package:yeccolapp/views/homeitem/cours.dart'; 
import 'package:yeccolapp/views/homeitem/livre.dart'; 
import 'package:yeccolapp/views/homeitem/concours.dart';
import 'package:yeccolapp/views/homeitem/resultat.dart'; 
import 'package:yeccolapp/views/homeitem/items.dart'; 
import 'package:yeccolapp/views/user/activateaccount.dart';
import 'package:yeccolapp/views/user/login.dart';
import 'package:yeccolapp/views/user/register.dart';
import 'package:yeccolapp/views/user/reset_password.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case landingViewRoute:
      //return MaterialPageRoute(builder: (context) => LandingPage());
      return MaterialPageRoute(builder: (context) => LoginPage());
    case itemsViewRoute:
      //return MaterialPageRoute(builder: (context) => LandingPage());
      return MaterialPageRoute(builder: (context) => ItemsPage());
    case leconsViewRoute:
      //return MaterialPageRoute(builder: (context) => LandingPage());
      return MaterialPageRoute(builder: (context) => LeconsPage());
    case coursViewRoute:
      //return MaterialPageRoute(builder: (context) => LandingPage());
      return MaterialPageRoute(builder: (context) => CoursPage());
    case livresViewRoute:
      //return MaterialPageRoute(builder: (context) => LandingPage());
      return MaterialPageRoute(builder: (context) => LivresPage());
    case concoursViewRoute:
      //return MaterialPageRoute(builder: (context) => LandingPage());
      return MaterialPageRoute(builder: (context) => ConcoursPage());
    case resultatsViewRoute:
      //return MaterialPageRoute(builder: (context) => LandingPage());
      return MaterialPageRoute(builder: (context) => ResultatsPage());
    case activateaccountViewRoute:
      //return MaterialPageRoute(builder: (context) => LandingPage());
      return MaterialPageRoute(builder: (context) => ActivateAccountPage());
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case hometabViewRoute:
      return MaterialPageRoute(builder: (context) => HomePageTab());
    case loginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case registerViewRoute:
      return MaterialPageRoute(builder: (context) => RegisterPage());
    case resetPasswordViewRoute:
      return MaterialPageRoute(builder: (context) => ResetPasswordPage());
    case coursDetailsViewRoute:
      return MaterialPageRoute(builder: (context) => CoursDetailsPage(coursId: settings.arguments));
    case leconDetailsViewRoute:
      return MaterialPageRoute(builder: (context) => LeconDetailsPage(leconId: settings.arguments));
      break;
    case livreDetailsViewRoute:
      return MaterialPageRoute(builder: (context) => LivreDetailsPage(livreId: settings.arguments));
      break;
    default:
       return MaterialPageRoute(builder: (context) => LoginPage());
      //return MaterialPageRoute(builder: (context) => LandingPage());
  }
}

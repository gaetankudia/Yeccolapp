import 'package:flutter/material.dart';
import 'package:yeccolapp/_routing/routes.dart';
import 'package:yeccolapp/views/lecon_details.dart';
import 'package:yeccolapp/views/home.dart';
import 'package:yeccolapp/views/landing.dart';
import 'package:yeccolapp/views/login.dart';
import 'package:yeccolapp/views/register.dart';
import 'package:yeccolapp/views/reset_password.dart';
import 'package:yeccolapp/views/cours_details.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case landingViewRoute:
      //return MaterialPageRoute(builder: (context) => LandingPage());
      return MaterialPageRoute(builder: (context) => LoginPage());
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case loginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case registerViewRoute:
      return MaterialPageRoute(builder: (context) => RegisterPage());
    case resetPasswordViewRoute:
      return MaterialPageRoute(builder: (context) => ResetPasswordPage());
    case coursDetailsViewRoute:
      return MaterialPageRoute(builder: (context) => CoursDetailsPage(userId: settings.arguments));
    case leconDetailsViewRoute:
      return MaterialPageRoute(builder: (context) => LeconDetailsPage(leconId: settings.arguments));
      break;
    default:
       return MaterialPageRoute(builder: (context) => LoginPage());
      //return MaterialPageRoute(builder: (context) => LandingPage());
  }
}

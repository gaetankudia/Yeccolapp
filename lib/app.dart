import 'package:flutter/material.dart';
import 'package:yeccolapp/_routing/routes.dart';
import 'package:yeccolapp/_routing/router.dart' as router;
import 'package:yeccolapp/theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yecolapp',
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      onGenerateRoute: router.generateRoute,
      initialRoute: loginViewRoute,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yeccolapp/app.dart';
import 'package:yeccolapp/utils/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: primaryDark
  ));
  runApp(App());
}

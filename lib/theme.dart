import 'package:flutter/material.dart';
import 'package:yeccolapp/utils/colors.dart';
import 'package:yeccolapp/utils/utils.dart';

ThemeData buildThemeData(){
  final baseTheme = ThemeData(fontFamily: AvailableFonts.primaryFont);

  // return baseTheme.copyWith();
   return baseTheme.copyWith(
     primaryColor: secondaryColor,
     primaryColorDark: secondaryDark,
     primaryColorLight: secondaryLight,
     accentColor: secondaryColor,
   );
}
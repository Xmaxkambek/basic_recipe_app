import 'package:basic_recipe_app/screen/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:basic_recipe_app/screen/home_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    routes: {
      'home': (context) => HomePage(),
      'menu': (context) => MenuPage(),
    },
  ));
}

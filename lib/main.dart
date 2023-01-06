import 'package:basic_recipe_app/route/route.dart';
import 'package:basic_recipe_app/screen/burger_page.dart';
import 'package:basic_recipe_app/screen/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:basic_recipe_app/screen/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: menuPage,
    routes: {
      homePage: (context) => HomePage(),
      menuPage: (context) => MenuPage(),
      'burger': (context) => BurgerPage(),
    },
  ));
}

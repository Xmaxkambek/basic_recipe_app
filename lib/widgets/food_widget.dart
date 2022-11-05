import 'package:basic_recipe_app/food.dart';

import 'package:flutter/material.dart';

class FoodWidget extends StatelessWidget {
  Food food = Food(name: 'Somsa', img: 'Somsa.png', price: 1);
  FoodWidget({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/${food.img}'),
      ),
      title: Text(food.name.toString()),
      trailing: Icon(Icons.arrow_forward_ios),
      subtitle: Text("⏱ 5 min ⚪️ coin  ♨️kcal"),
    );
  }
}

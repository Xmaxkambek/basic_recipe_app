import 'package:basic_recipe_app/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  List<Food> food = [
    Food(name: 'Burger', img: 'Burger.png', price: 5),
    Food(name: 'Chicken', img: 'Chicken.png', price: 6),
    Food(name: 'Lagmon', img: 'Lagmon.png', price: 2),
    Food(name: 'Pizza', img: 'Pizza.png', price: 10),
    Food(name: 'Somsa', img: 'Somsa.png', price: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, 'home');
          },
        ),
        title: Text('TITLE'),
      ),
      body: Container(
        child: ListView.separated(
            itemCount: food.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/${food[index].img}'),
                ),
                title: Text(food[index].name.toString()),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text("⏱ 5 min ⚪️ coin  ♨️kcal"),
              );
            },
            separatorBuilder: ((context, index) => Divider())),
      ),
    );
  }
}

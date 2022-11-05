import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  List food = ['Lagmon', 'Burger', 'Chicken', 'Pizza', 'Somsa'];

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
                  backgroundImage: AssetImage('images/${food[index]}.png'),
                ),
                title: Text(food[index]),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text("⏱ 5 min ⚪️ coin  ♨️kcal"),
              );
            },
            separatorBuilder: ((context, index) => Divider())),
      ),
    );
  }
}

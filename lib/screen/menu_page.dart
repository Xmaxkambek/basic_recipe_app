import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  List food = ['Burger', 'Chicken', 'Lagmon', 'Pizza', 'Somsa'];

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
                  backgroundImage: AssetImage('images/Somsa.png'),
                ),
                title: Text(food[index]),
              );
            },
            separatorBuilder: ((context, index) => Divider())),
      ),
    );
  }
}

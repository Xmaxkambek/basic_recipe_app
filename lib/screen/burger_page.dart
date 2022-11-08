import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BurgerPage extends StatelessWidget {
  const BurgerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, 'menu');
          },
        ),
        title: Text('Burger'),
      ),
      body: Container(
        child: Center(
          child: Text('Burger'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 62, 199, 119),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/vegtables.jpg'),
              radius: 80,
            ),
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Food Ordering App',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.white),
                    )),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      print('Pressed');
                    },
                    child: Text('Get a meal'))
              ],
            )
          ],
        ));
  }
}

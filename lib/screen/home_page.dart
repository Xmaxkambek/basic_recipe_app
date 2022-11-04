import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 40, 145, 43),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/vegtables.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(100),
                
              ),
            ),
            Column(
              children: [
                SizedBox(height: 40,),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Food Ordering App',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.white),
                    )),SizedBox(height: 40,),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      
                      width: 200,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Get a meal',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Text("hello world"),
          backgroundColor: Colors.deepPurple[50],
          elevation: 10,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout),
            ),
          ],
        ),

        // body: Center(
        //   child: Container(
        //     decoration: BoxDecoration(
        //       color: Colors.deepPurple,
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //     height: 300,
        //     width: 300,
        //     padding: EdgeInsets.all(30),

        //     // child: Text(
        //     //   "hello world",
        //     //   style: TextStyle(
        //     //     color: Colors.white,
        //     //     fontSize: 25,
        //     //     fontWeight: FontWeight.bold,
        //     //   ),
        //     // ),
        //     child: Icon(
        //       Icons.favorite,
        //       color: Colors.pink,
        //       size: 40,
        //     ),
        //   ),
        // ),
        //list view is just a column that can scroll
        // since coloumn cannot scroll, if it goes over the screen limit, it will overflow
        body: ListView(
          children: [
            //1st box
            Expanded(
              child: Container(
                height: 350,
                color: Colors.deepPurple,
              ),
            ),
            //2nd box
            Expanded(
              flex: 2,
              child: Container(
                height: 350,
                color: Colors.deepPurple[400],
              ),
            ),

            Expanded(
              child: Container(
                height: 350,

                color: Colors.deepPurple[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'lib1.dart';
import 'lib2.dart';
import 'lib3.dart';
import 'lib4.dart';
import 'lib5.dart';
import 'lib6.dart';
import 'lib7.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/lib1': (context) => Lib1(),
        '/lib2': (context) => Lib2(),
        '/lib3': (context) => Lib3(),
        '/lib4': (context) => Lib4(),
        '/lib5': (context) => Lib5(),
        '/lib6': (context) => Lib6(),
        '/lib7': (context) => Lib7(),
      },
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        actions: [
          PopupMenuItem(
            onTap: () {
              setState(() {

              },);
            },
            child: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
          ),
        ],
        title: Center(
          child: Text(
            "Top Seven Flutter Libraries",
          ),
        ),
      ),
      body: ListView(
        children: [
          MaterialButton(
            height: 80,
            color: Colors.lightBlue,
            onPressed: () {
              Navigator.pushNamed(context, "/lib1");
            },
            child: Text(
              "Font_Awesome_Flutter",
              style: TextStyle(fontSize: 35),
            ),
          ),
          MaterialButton(
            height: 80,
            color: Colors.grey,
            onPressed: () {
              Navigator.pushNamed(context, "/lib2");
            },
            child: Text(
              "Share_Plus",
              style: TextStyle(fontSize: 35),
            ),
          ),
          MaterialButton(
            height: 80,
            color: Colors.pink,
            onPressed: () {
              Navigator.pushNamed(context, "/lib3");
            },
            child: Text(
              "Photo_View",
              style: TextStyle(fontSize: 35),
            ),
          ),
          MaterialButton(
            height: 80,
            color: Colors.purple,
            onPressed: () {
              Navigator.pushNamed(context, "/lib4");
            },
            child: Text(
              "Flutter_Spinkit",
              style: TextStyle(fontSize: 35),
            ),
          ),
          MaterialButton(
            height: 80,
            color: Colors.limeAccent,
            onPressed: () {
              Navigator.pushNamed(context, "/lib5");
            },
            child: Text(
              "Shimmer",
              style: TextStyle(fontSize: 35),
            ),
          ),
          MaterialButton(
            height: 80,
            color: Colors.green,
            onPressed: () {
              Navigator.pushNamed(context, "/lib6");
            },
            child: Text(
              "Flutter_Linkify",
              style: TextStyle(fontSize: 35),
            ),
          ),
          MaterialButton(
            height: 80,
            color: Colors.red,
            onPressed: () {
              Navigator.pushNamed(context, "/lib7");
            },
            child: Text(
              "Dropdown_Button2",
              style: TextStyle(fontSize: 35),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Lib1 extends StatefulWidget {
  const Lib1({super.key});

  @override
  State<Lib1> createState() => _Lib1State();
}

class _Lib1State extends State<Lib1> {
  var name = "";
  int _num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Font_Awesome_Flutter")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 60.0,
              icon: FaIcon(FontAwesomeIcons.fortAwesome),
              onPressed: () {
                setState(() {
                  if (name == "") {
                    name = "Font_Awesome_Flutter";
                  } else {
                    name = "";
                  }
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
            Text("$name"),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 60.0,
                  icon: FaIcon(FontAwesomeIcons.add),
                  onPressed: () {
                    setState(() {
                      _num++;
                    });
                  },
                ),
                SizedBox(
                  width: 80,
                ),
                IconButton(
                  iconSize: 60.0,
                  icon: FaIcon(FontAwesomeIcons.minus),
                  onPressed: () {
                    setState(() {
                      _num--;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text("$_num", style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Lib1 extends StatefulWidget {
  const Lib1({super.key});

  @override
  State<Lib1> createState() => _Lib1State();
}

class _Lib1State extends State<Lib1> {
  var name = "";
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
              icon: FaIcon(FontAwesomeIcons.amazon),
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
              height: 80,
            ),
            Text("$name"),
          ],
        ),
      ),
    );
  }
}

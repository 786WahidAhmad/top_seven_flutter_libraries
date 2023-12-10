import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Lib2 extends StatefulWidget {
  const Lib2({super.key});

  @override
  State<Lib2> createState() => _Lib2State();
}

class _Lib2State extends State<Lib2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Share_Plus")),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Share.share('https://www.google.com',
                  subject: 'Look what I made!');
            },
            child: Text("Share"),
          ),
        ));
  }
}

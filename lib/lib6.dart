import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class Lib6 extends StatefulWidget {
  const Lib6({super.key});

  @override
  State<Lib6> createState() => _Lib6State();
}

class _Lib6State extends State<Lib6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flutter_Linkify & Url_Launcher")),
      ),
      body: Center(
        child: Linkify(
          onOpen: (link) {
            launchUrl(Uri.parse(link.url));
          },
          text: "Click -> https://flutter.dev",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
          linkStyle: TextStyle(color: Colors.blue[700]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Lib3 extends StatefulWidget {
  const Lib3({super.key});

  @override
  State<Lib3> createState() => _Lib3State();
}

class _Lib3State extends State<Lib3> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Photo_View")),
      ),
      body: Container(
        child: PhotoView(
          backgroundDecoration: BoxDecoration(),
          imageProvider: AssetImage("images/photo.jpg"),
        ),
      ),
    );
  }
}

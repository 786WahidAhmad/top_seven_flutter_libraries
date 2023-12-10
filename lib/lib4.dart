import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Lib4 extends StatefulWidget {
  const Lib4({super.key});

  @override
  State<Lib4> createState() => _Lib4State();
}

class _Lib4State extends State<Lib4> {
  final spinkit = SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flutter_Spinkit")),
      ),
      body: spinkit,
    );
  }
}

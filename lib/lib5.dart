import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Lib5 extends StatefulWidget {
  const Lib5({super.key});

  @override
  State<Lib5> createState() => _Lib5State();
}

class _Lib5State extends State<Lib5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Shimmer")),
      ),
      body: Center(
        child: SizedBox(
          width: 400.0,
          height: 200.0,
          child: Shimmer.fromColors(
            baseColor: Colors.blue,
            highlightColor: Colors.yellow,
            child: Text(
              'Code4Fun',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

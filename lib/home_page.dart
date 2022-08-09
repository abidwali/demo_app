import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("Hello and Welcome to Flutter"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class My extends StatelessWidget {
  const My({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('My'),
        ),
      ),
    );
  }
}
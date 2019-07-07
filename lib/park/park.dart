import 'package:flutter/material.dart';

class Park extends StatelessWidget {
  const Park({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
        appBar: new AppBar(
          title:  new Text('park'),
        ),
      ),
    );
  }
}
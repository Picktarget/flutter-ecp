// Flutter code sample for material.BottomNavigationBar.1

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/material.dart';
import 'package:flutter_ecp/my/my.dart';
import 'package:flutter_ecp/order/order.dart';

import 'charge/charge.dart';
import 'park/park.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  List<Widget> pageList = List();

  @override
  void initState() {
    pageList..add(Charge())..add(Park())..add(Order())..add(My());
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              '充电',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('停车'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('订单'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplay),
            title: Text(
              '我的',
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

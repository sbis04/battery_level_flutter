import 'package:flutter/material.dart';

import 'battery_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Battery Level Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: BatteryPage(),
    );
  }
}

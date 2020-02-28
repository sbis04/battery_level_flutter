import 'package:battery_level_pc/util.dart';
import 'package:flutter/material.dart';

class BatteryPage extends StatefulWidget {
  @override
  _BatteryPageState createState() => _BatteryPageState();
}

class _BatteryPageState extends State<BatteryPage> {
  FetchBatteryLevel batteryLevel = FetchBatteryLevel();

  String batteryLevelString = "Unknown battery level.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Battery Level Demo"),
      ),
      body: Container(
        color: Colors.orange[100],
        child: Center(
          child: FutureBuilder(
            future: batteryLevel.getBatteryLevel(),
            builder: (context, snapshot) {
              batteryLevelString = snapshot.data;
              return Text(
                batteryLevelString,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

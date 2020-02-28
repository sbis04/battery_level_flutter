import 'package:flutter/services.dart';

class FetchBatteryLevel {
  static const platform = const MethodChannel("com.souvikbiswas.demo/battery");

  Future<String> getBatteryLevel() async {
    String batteryLevelString = '';
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');

      batteryLevelString = "Battery Level is : $result";
    } on PlatformException catch (_) {
      batteryLevelString = "Failed to get battery level.";
    }

    return batteryLevelString;
  }
}

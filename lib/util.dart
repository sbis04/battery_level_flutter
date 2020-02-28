import 'package:flutter/services.dart';

// Helper class for fetching the battery level
class FetchBatteryLevel {
  // Setting up the platform channel specifying
  // a name for communication
  static const platform = const MethodChannel("com.souvikbiswas.demo/battery");

  // Function for calling a method
  // present in the native android
  // app code
  Future<String> getBatteryLevel() async {
    String batteryLevelString = '';
    try {
      // Retrieving the result using the native method
      final int result = await platform.invokeMethod('getBatteryLevel');

      batteryLevelString = "Battery Level is : $result";
    } on PlatformException catch (_) {
      batteryLevelString = "Failed to get battery level.";
    }

    return batteryLevelString;
  }
}

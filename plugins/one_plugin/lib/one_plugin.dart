
import 'dart:async';

import 'package:flutter/services.dart';

class OnePlugin {
  static const MethodChannel _channel =
      const MethodChannel('one_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

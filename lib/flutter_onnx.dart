
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterOnnx {
  static const MethodChannel _channel = MethodChannel('flutter_onnx');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

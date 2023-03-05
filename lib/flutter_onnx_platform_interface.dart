import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_onnx_method_channel.dart';

abstract class FlutterOnnxPlatform extends PlatformInterface {
  /// Constructs a FlutterOnnxPlatform.
  FlutterOnnxPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterOnnxPlatform _instance = MethodChannelFlutterOnnx();

  /// The default instance of [FlutterOnnxPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterOnnx].
  static FlutterOnnxPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterOnnxPlatform] when
  /// they register themselves.
  static set instance(FlutterOnnxPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

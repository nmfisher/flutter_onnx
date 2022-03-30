#import "FlutterOnnxPlugin.h"
#if __has_include(<flutter_onnx/flutter_onnx-Swift.h>)
#import <flutter_onnx/flutter_onnx-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_onnx-Swift.h"
#endif

@implementation FlutterOnnxPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterOnnxPlugin registerWithRegistrar:registrar];
}
@end

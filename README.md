# flutter_onnx

A new flutter plugin project.

# Build

## iOS

cat ../polyvox/flutter/wavlm_onnx/wavlm.disable.required_operators.config ../polyvox/flutter/polyvox_viseme_prediction/assets/encoder.disable.required_operators.config ../polyvox/flutter/flutter_tts_onnx/assets/lpcnet_large.disable.required_operators.config > /tmp/merged.config && ./build.sh --include_ops_by_config /tmp/merged.config --ios --config Release --apple_deploy_target 11.0 --use_xcode --ios_sysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk


## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# flutter_onnx

Just a wrapper around the compiled ONNXRuntime libraries. Only making this public to help people use the flutter_sherpa_onnx repo. I use this repo for other internal projects, so the onnxruntime version/ONNX operators/build flags are specific to my needs; if you want to use your own version, you can hack flutter_sherpa_onnx to remove the dependency on this package and provide your own version.

# Build
(collect *.required_operators.config) >> /tmp/merged.config

## Android

./build.sh --include_ops_by_config /tmp/merged.config --config MinSizeRel --android --android_ndk_path=$(realpath ~/Android/Sdk/ndk/26.0.10792818) --android_sdk_path=$(realpath ~/Android/Sdk/)  --build_shared_lib --android_abi=arm64-v8a --compile_no_warning_as_error 

## iOS

 ./build.sh  --include_ops_by_config /tmp/merged.config  --config MinSizeRel --apple_deploy_target 12.0  --ios --ios_sysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk  --use_xcode  --skip_onnx_tests --build_apple_framework --use_coreml --path_to_protoc_exe /opt/homebrew/opt/protobuf@21/bin/protoc      

# MacOS
./build.sh  --include_ops_by_config /tmp/merged.config  --config Release --apple_deploy_target 12.0  --osx_arch arm64 --use_xcode  --skip_onnx_tests --build_apple_framework  --compile_no_warning_as_error


## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


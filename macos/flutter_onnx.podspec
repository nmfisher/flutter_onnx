#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_onnx.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_onnx'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'
  s.vendored_libraries = 'lib/*.a'

  s.platform = :osx, '10.11'
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 
    'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'OTHER_LDFLAGS' => '-framework Accelerate -lonnxruntime_session -lonnxruntime_common -lonnxruntime_providers -lonnxruntime_framework -lonnxruntime_graph -lonnxruntime_mlas -lonnxruntime_flatbuffers -lonnxruntime_optimizer -lprotobuf-lite -lonnx -lonnxruntime_util -lonnx_proto -labsl_hash -lnsync_cpp -labsl_throw_delegate -labsl_flags_reflection -labsl_city -labsl_raw_hash_set -labsl_low_level_hash $(inherited)',
    "LIBRARY_SEARCH_PATHS" => '${PODS_ROOT}/../Flutter/ephemeral/.symlinks/plugins/flutter_onnx/macos/lib',
  }

  s.user_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-framework Accelerate -lonnxruntime_session -lonnxruntime_common -lonnxruntime_providers -lonnxruntime_framework -lonnxruntime_graph -lonnxruntime_mlas -lonnxruntime_flatbuffers -lonnxruntime_optimizer -lprotobuf-lite -lonnx -lonnxruntime_util -lonnx_proto -labsl_hash -lnsync_cpp -labsl_throw_delegate -labsl_flags_reflection -labsl_city -labsl_raw_hash_set -labsl_low_level_hash $(inherited)',
    "LIBRARY_SEARCH_PATHS" => '${PODS_ROOT}/../Flutter/ephemeral/.symlinks/plugins/flutter_onnx/macos/lib',
 }

  
  s.swift_version = '5.0'
end

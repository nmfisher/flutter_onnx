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
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'
  s.vendored_libraries = 'lib/*.dylib'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 
     'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386', 
     'OTHER_LDFLAGS' => '$(inherited) -lonnxruntime.1.12.0 -lcustom_op_library  $(inherited)',
     "LIBRARY_SEARCH_PATHS" => '"${PODS_ROOT}/../.symlinks/plugins/flutter_onnx/ios/lib"',
  }
  s.user_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-lonnxruntime.1.12.0 -lcustom_op_library  $(inherited)',
    "LIBRARY_SEARCH_PATHS" => '"${PODS_ROOT}/../.symlinks/plugins/flutter_onnx/ios/lib"',
 }

  s.swift_version = '5.0'
end

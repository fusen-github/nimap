#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint app_plugin.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'app_plugin'
  s.version          = '0.0.1'
  s.summary          = 'Ni map api.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

#  s.ios.vendored_frameworks

#  s.vendored_frameworks = [
#    'Libs/MapApi.framework',
#  ]
  
  header_paths = [
    
  ]
  
  framework_search_paths = [
    "${PODS_ROOT}/../ThirdPartys/libs"
  ]
  
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
#    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
#    'EXCLUDED_ARCHS' => 'i386 armv7 armv7s',
    'VALID_ARCHS' => 'arm64 arm64e',
#    'HEADER_SEARCH_PATHS' => header_paths.join(' '),
    'FRAMEWORK_SEARCH_PATHS' => framework_search_paths.join(' '),
  }
  
end

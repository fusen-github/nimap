#
# NOTE: This podspec is NOT to be published. It is only used as a local source!
# 注释: 这个podspec 不能发布，统一管理插件用到的本地三方库
#

#### Flutter pod
# Pod::Spec.new do |s|
#   s.name             = 'Flutter'
#   s.version          = '1.0.0'
#   s.summary          = 'High-performance, high-fidelity mobile apps.'
#   s.description      = <<-DESC
# Flutter provides an easy and productive way to build and deploy high-performance mobile apps for Android and iOS.
#                        DESC
#   s.homepage         = 'https://flutter.io'
#   s.license          = { :type => 'MIT' }
#   s.author           = { 'Flutter Dev Team' => 'flutter-dev@googlegroups.com' }
#   s.source           = { :git => 'https://github.com/flutter/engine', :tag => s.version.to_s }
#   s.ios.deployment_target = '8.0'
#   s.vendored_frameworks = 'Flutter.framework'
# end


### plugin
# Pod::Spec.new do |s|
#   s.name             = 'app_plugin'
#   s.version          = '0.0.1'
#   s.summary          = 'Ni map api.'
#   s.description      = <<-DESC
# A new flutter plugin project.
#                        DESC
#   s.homepage         = 'http://example.com'
#   s.license          = { :file => '../LICENSE' }
#   s.author           = { 'Your Company' => 'email@example.com' }
#   s.source           = { :path => '.' }
#   s.source_files = 'Classes/**/*'
#   s.public_header_files = 'Classes/**/*.h'
#   s.dependency 'Flutter'
#   s.platform = :ios, '8.0'

# #  s.ios.vendored_frameworks

#   s.vendored_frameworks = [
#     'Libs/MapApi.framework',
#   ]
  
#   # Flutter.framework does not contain a i386 slice.
#   s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
# end


Pod::Spec.new do |s|
  s.name             = 'ThirdPartys'
  s.version          = '0.0.1'
  s.summary          = '同一管理插件三方库'
  s.description      = <<-DESC
  统一管理插件用到的本地三方库的pods工程
                       DESC
  s.homepage         = '本地'
  s.license          = { :file => 'LICENSE' }
  s.author           = { 'fusen' => 'sen' }
  s.source           = { :path => '.' }
  s.platform = :ios, '8.0'
  # s.ios.deployment_target = '10.0'

  s.vendored_frameworks = [
    'libs/SocketRocket.framework',
    'libs/MapApi.framework'
  ]
end

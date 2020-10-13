#import "AppPlugin.h"
#import <MapApi/MapApi.h>
#import <SocketRocket/SocketRocket.h>

@implementation AppPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"app_plugin"
            binaryMessenger:[registrar messenger]];
  AppPlugin* instance = [[AppPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
    
    NSLog(@"测试打印...");
    
    [MAPerson logPerson];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end

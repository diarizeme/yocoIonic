/********* YocoPlugin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface YocoPlugin : CDVPlugin {
  // Member variables go here.
}

- (void)registerSDK:(CDVInvokedUrlCommand*)command;

@end

@implementation YocoPlugin

- (void)registerSDK:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSNumber *param1 = [[command.arguments objectAtIndex:0] valueForKey:@"param1"];

    if(param1 != nil) {
        NSString* result = @(param1);
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:result];
    }
    else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


@end

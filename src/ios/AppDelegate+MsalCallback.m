//
//  AppDelegate+MsalCallback.m
//  KSUMobile
//
//  Created by wrobins on 12/6/19.
//

#import "AppDelegate+MsalCallback.h"
#import <MSAL/MSAL.h>

@implementation AppDelegate (MsalCallback)

- (BOOL)application:(UIApplication *)app
            openURL:(NSURL *)url
            options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
    // gets the passed url's `urlScheme`
    NSString *currentUrlScheme = [url.absoluteString componentsSeparatedByString:@"://"].firstObject;
    
    // check if it should delegate to the library or to `CDVAppDelegate`
    return [currentUrlScheme hasPrefix:@"msal."] ? [MSALPublicClientApplication handleMSALResponse:url sourceApplication:options[UIApplicationOpenURLOptionsSourceApplicationKey]] : [super application:app openURL:url options:options];
}

@end

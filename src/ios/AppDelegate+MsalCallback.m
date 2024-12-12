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
    // check if it should delegate to the library or to `CDVAppDelegate`
    return [super application:app openURL:url options:options];
}

@end

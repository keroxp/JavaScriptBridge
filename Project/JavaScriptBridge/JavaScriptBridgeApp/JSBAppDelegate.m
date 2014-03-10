//
//  JSBAppDelegate.m
//  JavaScriptBridge
//
//  Created by kishikawa katsumi on 2014/01/02.
//  Copyright (c) 2014 kishikawa katsumi. All rights reserved.
//

#import "JSBAppDelegate.h"
#import "JavaScriptBridge.h"

@implementation JSBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    JSContext *context = [JSBScriptingSupport globalContext];
    [context evaluateScript:
     @"var window = UIWindow.alloc().initWithFrame(UIScreen.mainScreen().bounds);"
     @"window.backgroundColor = UIColor.whiteColor();"
     @""
     @"var navigationController = UINavigationController.new();"
     @""
     @"var tableViewController = UITableViewController.new();"
     @"tableViewController.navigationItem.title = 'JavaScriptBridge';"
     @"navigationController.viewControllers = [tableViewController];"
     @""
     @"window.rootViewController = navigationController;"
     @""
     @"window.makeKeyAndVisible();"
     @""
     @"var alertView = UIAlertView.new();"
     @"alertView.message = 'Hello JavaScriptBridge!';"
     @"alertView.addButtonWithTitle('OK');"
     @"alertView.show();"
     ];
    
    return YES;
}

@end

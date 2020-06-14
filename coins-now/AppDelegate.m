//
//  AppDelegate.m
//  coins-now
//
//  Created by Mateus Sousa on 13/06/20.
//  Copyright © 2020 Mateus Sousa. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIViewController *controller = [ViewController new];
    [[controller view] setBackgroundColor:UIColor.blueColor];
    self.window = [UIWindow new];
    self.window.rootViewController = controller;
    [self.window makeKeyAndVisible];
    return YES;
}

@end

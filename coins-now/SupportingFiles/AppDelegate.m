//
//  AppDelegate.m
//  coins-now
//
//  Created by Mateus Sousa on 13/06/20.
//  Copyright © 2020 Mateus Sousa. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    UIViewController *controller = [MainViewController new];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:controller];
    self.window = [UIWindow new];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end

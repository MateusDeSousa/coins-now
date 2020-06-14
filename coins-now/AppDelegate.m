//
//  AppDelegate.m
//  coins-now
//
//  Created by Mateus Sousa on 13/06/20.
//  Copyright © 2020 Mateus Sousa. All rights reserved.
//

#import "AppDelegate.h"

//@interface AppDelegate ()
//
//@end

@implementation AppDelegate{
    UIWindow* _window;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    _window = [[UIWindow alloc] init];
    return YES;
}

- (void) startApp {
    UIViewController *controller = [UIViewController init];
    [[controller view] setBackgroundColor:UIColor.blueColor];
    _window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
}

- (UIWindow *)window {
    return _window;
}

- (void)setWindow:(UIWindow *)window {
    _window = window;
}

@end

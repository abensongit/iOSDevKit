//
//  AppDelegate+Options.h
//  AppFrameKit
//
//  Created by sunshine on 2020/2/16.
//  Copyright © 2020 benson. All rights reserved.
//

#import "AppDelegate+Options.h"
#import "AppViewController.h"


@implementation AppDelegate (Options)

- (BOOL)application:(UIApplication *)application didLaunchWithOptions:(NSDictionary *)launchOptions
{
    // 设置根部窗口
    [self setWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    [self.window setBackgroundColor:COLOR_SYSTEM_MAIN_UI_BACKGROUND_DEFAULT];
    [self.window makeKeyAndVisible];
    
    // 根视图控制器
    [self setRootViewController];

    return YES;
}

#pragma mark 设置根视图控制器
- (void)setRootViewController
{
  AppViewController *rootViewController = [[AppViewController alloc] init];
  [self.window setRootViewController:rootViewController];
}


@end


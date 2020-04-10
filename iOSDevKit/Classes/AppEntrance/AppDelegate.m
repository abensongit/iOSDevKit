//
//  AppDelegate.m
//  AppFrameKit
//
//  Created by sunshine on 2020/2/16.
//  Copyright © 2020 benson. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+Options.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma mark -
#pragma mark 初始化配置
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    CFCLog(@"程序开始");

    return [self application:application didLaunchWithOptions:launchOptions];
}

@end

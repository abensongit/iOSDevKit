//
//  AppViewController.m
//  AppFrameKit
//
//  Created by sunshine on 2020/2/16.
//  Copyright © 2020 benson. All rights reserved.
//

#import "AppViewController.h"
#import "AppHomeViewController.h"
#import "AppFinderViewController.h"
#import "AppSettingViewController.h"

@interface AppViewController ()

@end

@implementation AppViewController

#pragma mark 添加子控制器
- (void)addChildControllers
{
    // 首页
    [self addChildNavigationController:[CFCNavigationController class]
                    rootViewController:[AppHomeViewController class]
                       navigationTitle:STR_NAVIGATION_BAR_TITLE_HOME
                       tabBarItemTitle:STR_TAB_BAR_ITEM_NAME_HOME
                 tabBarNormalImageName:ICON_TAB_BAR_ITEM_HOME_NORMAL
                 tabBarSelectImageName:ICON_TAB_BAR_ITEM_HOME_SELECT
                     tabBarItemEnabled:YES];
    // 发现
    [self addChildNavigationController:[CFCNavigationController class]
                    rootViewController:[AppFinderViewController class]
                       navigationTitle:STR_NAVIGATION_BAR_TITLE_FINDER
                       tabBarItemTitle:STR_TAB_BAR_ITEM_NAME_FINDER
                 tabBarNormalImageName:ICON_TAB_BAR_ITEM_FINDER_NORMAL
                 tabBarSelectImageName:ICON_TAB_BAR_ITEM_FINDER_SELECT
                     tabBarItemEnabled:YES];
    
    // 我的
    [self addChildNavigationController:[CFCNavigationController class]
                    rootViewController:[AppSettingViewController class]
                       navigationTitle:STR_NAVIGATION_BAR_TITLE_SETTING
                       tabBarItemTitle:STR_TAB_BAR_ITEM_NAME_SETTING
                 tabBarNormalImageName:ICON_TAB_BAR_ITEM_SETTING_NORMAL
                 tabBarSelectImageName:ICON_TAB_BAR_ITEM_SETTING_SELECT
                     tabBarItemEnabled:YES];
}

@end

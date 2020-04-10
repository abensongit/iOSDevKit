//
//  AppHomeViewController.m
//  AppFrameKit
//
//  Created by sunshine on 2020/2/16.
//  Copyright © 2020 benson. All rights reserved.
//

#import "AppHomeViewController.h"
#import "AppNavMultiItemViewController.h"

@interface AppHomeViewController ()

@end

@implementation AppHomeViewController

#pragma mark -
#pragma mark 事件处理 - 更多
- (void)pressNavBarRightButtonAction:(id)sender
{
  AppNavMultiItemViewController *pushVC = [[AppNavMultiItemViewController alloc] init];
  [self.navigationController pushViewController:pushVC animated:YES];
}

#pragma mark -
#pragma mark 视图生命周期（加载视图）
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 测试 NSDictionary 插入空闪退
    {
        NSString *value = nil;
        NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
        [dictionary setObject:value forKey:@"1"];
        CFCLog(@"%@", dictionary.allKeys);
    }
    
    // 添加导航栏
    {
        UIBarButtonItem *rightButtonItem = [self createBarButtonItemWithImage:ICON_NAVIGATION_BAR_BUTTON_MORE_POINT
                                                                       action:@selector(pressNavBarRightButtonAction:)];
        [self.navigationItem setRightBarButtonItem:rightButtonItem];
    }
}


#pragma mark -
#pragma mark 设置导航条是否隐藏
- (BOOL)prefersNavigationBarHidden
{
    return NO;
}

@end

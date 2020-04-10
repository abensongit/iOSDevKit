//
//  AppSettingViewController.m
//  AppFrameKit
//
//  Created by sunshine on 2020/2/16.
//  Copyright © 2020 benson. All rights reserved.
//

#import "AppSettingViewController.h"
#import "AppSocketViewController.h"
#import "iOSDevKit-Swift.h"

@interface AppSettingViewController ()

@end

@implementation AppSettingViewController

#pragma mark -
#pragma mark 事件处理 - 设置按钮
- (void)pressNavBarRightButtonAction:(id)sender
{
    AppSocketViewController *pushVC = [[AppSocketViewController alloc] init];
    [self.navigationController pushViewController:pushVC animated:YES];
}

#pragma mark -
#pragma mark 视图生命周期（加载视图）
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *rightButtonItem = [self createBarButtonItemWithImage:ICON_NAVIGATION_BAR_BUTTON_MORE_POINT
                                                                   action:@selector(pressNavBarRightButtonAction:)];
    [self.navigationItem setRightBarButtonItem:rightButtonItem];
    
    [self testObjcCallSwift];
}

- (void)testObjcCallSwift
{
    SwiftTestClass *test = [[SwiftTestClass alloc] init];
    [test showHelloWithNameWithName:@"Sun"];
    [test userOCMethod];
}

@end

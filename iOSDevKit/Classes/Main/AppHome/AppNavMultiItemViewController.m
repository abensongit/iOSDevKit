//
//  AppNavMultiItemViewController.m
//  AppFrameKit
//
//  Created by sunshine on 2020/2/17.
//  Copyright © 2020 benson. All rights reserved.
//

#import "AppNavMultiItemViewController.h"

@interface AppNavMultiItemViewController ()

@end

@implementation AppNavMultiItemViewController

#pragma mark -
#pragma mark 事件处理 - 扫码
- (void)pressNavBarButtonActionScanQRCode:(id)sender
{
    [self alertPromptMessage:@"[扫码]"];
}

#pragma mark 事件处理 - 设置
- (void)pressNavBarButtonActionSetting:(id)sender
{
    [self alertPromptMessage:@"[设置]"];
}


#pragma mark -
#pragma mark 视图生命周期（加载视图）
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"导航多按钮";
    
    // 自定义多个item(自定义间距)
    UIView *navBarItemView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 88, 44)];
    //
    UIButton *button1 = [self createButtonWithImage:@"icon_navbar_scan_qrcode" action:@selector(pressNavBarButtonActionScanQRCode:)];
    [button1 setFrame:CGRectMake(0, 0, 44, 44)];
    [navBarItemView addSubview:button1];
    //
    UIButton *button2 = [self createButtonWithImage:@"icon_navbar_setting" action:@selector(pressNavBarButtonActionSetting:)];
    [button2 setFrame:CGRectMake(44, 0, 44, 44)];
    [navBarItemView addSubview:button2];
    //
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:navBarItemView];
}

#pragma mark -
#pragma mark 设置导航条样式类型
- (CFCNavBarType)preferredNavigationBarType
{
    return CFCNavBarTypeDefault;
}

#pragma mark 设置状态栏是否隐藏
- (BOOL)prefersStatusBarHidden
{
    return NO;
}

#pragma mark 设置导航条是否隐藏
- (BOOL)prefersNavigationBarHidden
{
    return NO;
}

#pragma mark 设置导航条背景颜色
- (UIColor *)prefersNavigationBarColor
{
    return COLOR_HEXSTRING(@"#262626");
}

#pragma mark 设置导航条标题颜色
- (UIColor *)prefersNavigationBarTitleColor
{
    return COLOR_HEXSTRING(@"C8AA81");
}

#pragma mark 设置导航栏按钮控件标题颜色（正常）
- (UIColor *)prefersNavigationBarButtonItemTitleColorNormal
{
    return COLOR_HEXSTRING(@"C8AA81");
}

#pragma mark 设置导航栏左边按钮控件图标（正常）
- (NSString *)prefersNavigationBarLeftButtonItemImageNormal
{
    return @"icon_navbar_back_arrow_brown";
}

#pragma mark 设置导航栏左边按钮控件图标（选中）
- (NSString *)prefersNavigationBarLeftButtonItemImageSelect
{
    return @"icon_navbar_back_arrow_brown";
}

#pragma mark 设置当前屏幕的旋转方向
- (UIInterfaceOrientation)preferredInterfaceOrientation
{
    return UIInterfaceOrientationPortrait;
    return UIInterfaceOrientationLandscapeLeft;
}

@end

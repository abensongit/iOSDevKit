//
//  AppFinderViewController.m
//  AppFrameKit
//
//  Created by sunshine on 2020/2/16.
//  Copyright © 2020 benson. All rights reserved.
//

#import "AppFinderViewController.h"
#import "AppShareWebViewController.h"

@interface AppFinderViewController ()

@end

@implementation AppFinderViewController

#pragma mark -
#pragma mark 事件处理 - 分享
- (void)pressNavigationBarRightButtonItem:(id)sender
{
  AppShareWebViewController *pushVC = [[AppShareWebViewController alloc] initWithHTMLUrlString:@"https:www.baidu.com"];
  [self.navigationController pushViewController:pushVC animated:YES];
}

#pragma mark -
#pragma mark 视图生命周期（加载视图）
- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

#pragma mark -
#pragma mark 设置导航栏右边按钮控件标题（默认“”）
- (NSString *)prefersNavigationBarRightButtonItemTitle
{
    return @"分享";
}


@end

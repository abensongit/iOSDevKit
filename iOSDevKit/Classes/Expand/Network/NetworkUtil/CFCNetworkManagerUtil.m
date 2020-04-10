//
//  CFCNetworkManagerUtil.m
//  AppFrameKit
//
//  Created by sunshine on 2020/2/16.
//  Copyright © 2020 benson. All rights reserved.
//

#import "CFCNetworkManagerUtil.h"

@implementation CFCNetworkManagerUtil

#pragma mark -
#pragma mark - 加载配置参数
+ (void)load
{
    [super load];
    
    // 初始化离散网络架构配置
    [[self class] networkInitializeSetting];
}

#pragma mark -
#pragma mark 初始化离散网络架构配置
+ (void)networkInitializeSetting
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        // 配置网络
        @try {
            // 设置基础域名
            YTKNetworkConfig *networkConfig = [YTKNetworkConfig sharedConfig];
            networkConfig.baseUrl = URL_API_BASE;
            networkConfig.debugLogEnabled = YES;
            // 设置可接受的数据类型
            YTKNetworkAgent *networkAgent = [YTKNetworkAgent sharedAgent];
            NSSet *acceptableContentTypes = [NSSet setWithObjects:@"application/json",
                                             @"text/json",
                                             @"text/javascript",
                                             @"text/plain",
                                             @"text/html",
                                             @"text/css",
                                             @"image/*",
                                             @"application/x-javascript",
                                             @"keep-alive",
                                             nil];
            NSString *keypath = @"jsonResponseSerializer.acceptableContentTypes";
            [networkAgent setValue:acceptableContentTypes forKeyPath:keypath];
        } @catch (NSException *exception) {
            CFCLog(@"网络模块->初始化网络配置->异常：%@", exception);
        } @finally {
            CFCLog(@"网络模块->初始化网络配置->成功");
        }
    });
}

@end

//
//  AppSocketViewController.m
//  iOSDevKit
//
//  Created by fangyuan on 2020/2/24.
//  Copyright © 2020 fangyuan. All rights reserved.
//

#import "AppSocketViewController.h"
#import "SocketUtil/FLSocketManager.h"
#import "SocketUtil/SocketRocketUtility.h"

@interface AppSocketViewController ()

@end

@implementation AppSocketViewController

#pragma mark -
#pragma mark 视图生命周期（加载视图）
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"在线聊天";
    
    /**
     *  开启连接
     */
    NSString *url = @"ws://10.10.95.141:18888?token=eoso6XL188CZlNicw7RjoYUcz09djsT%2FE6i1y%2FzKleaz5L6pR3jfM30Nhr8M5z%2FpHstLxEYtpOgto%2BJjesWjrFKUzGbe%2F5yL38jrVxbxx%2FbJbPH8N1nLAq9maGGkK5XKmc1Dy6NvOawkZnG9Q7gEnQASHzYn6DELwFlG9QgZWUm%2BzHpC9ANHrkypmbALQUpBQLtzDM8eQLczBaMN1dFeBrdnXFNCOrzgHY3xzMVgm1meavNCwexDM9UbRcYqKPLbfhN7OLGYkalOveDM5Y7EiU4WiPgTuYNhvmvohJQB57pxXZTP4SCWInoBikhxuHdcpYszOsCxvpH9eCmfgmxG21JeEglk0kgw6CiFfzqa3o1x6Y6VoIfpDOPg%2FS5dunt0lUaexcXb%2B5Tg9zGpUGdfjRBL8A%2FMwGJOBUUNXq6hpg%2BRk%2BTyB%2F9F5t0%2BkY0f%2BohXx7GSV1oy0jB9kdSvcw7ziB3ZzH%2FgCUkQdUKKtPZWUgEs9Y0Nvd%2BUs32wBZRiy8XKdAIKtHCwMyzsoiIbOEwwINKXQBe0LsMMm3ecbNuvwBkT97sO8SloP1q32E84U26b7455BWmIVn%2FV7HGQBKN5TyqaYEkdZWZcwAZaFhaBEsdlG1vJxGXe78Iu0aOPiQKjCJZzr%2FBwdv9dW2JBowkxVFIgq7pIi27udArlTb13zaimZ4J83kRcjpMh%2BtOQHridulcibNulndVaYvaypVs9MjwLz6lqAj1HC7gYjtpRNrwNiH7reNP2KooCO4otE%2ByGLPGctvIIRwvkDIOB9J0A9W6r73dZIx0qDkoI27NV5yfeP7xy96nwVSD1T0Y56%2B6Vxsthj8cKEbZ7xxJK6gerYt7jgErQWd5SxsczgV7EWLWkN98sipzSApf2g%2B%2BacbgG&deviceType=3";
    [[FLSocketManager shareInstance] fl_open:url connect:^{
        NSLog(@"成功连接");
    } receive:^(id message, FLSocketReceiveType type) {
        if (type == FLSocketReceiveTypeForMessage) {
            NSLog(@"接收 类型1--%@",message);
        }
        else if (type == FLSocketReceiveTypeForPong){
            NSLog(@"接收 类型2--%@",message);
        }
    } failure:^(NSError *error) {
        NSLog(@"连接失败");
    }];
}

- (void)dealloc
{
    [[FLSocketManager shareInstance] fl_close:^(NSInteger code, NSString *reason, BOOL wasClean) {
        NSLog(@"code = %zd, reason = %@", code, reason);
    }];
}

@end

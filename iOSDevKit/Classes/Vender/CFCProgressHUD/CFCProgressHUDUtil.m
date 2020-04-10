
#import "CFCProgressHUDUtil.h"

#define CFC_PROGRESS_HUDUtil_COLOR_RGBA(R, G, B, A) [UIColor colorWithRed:((R)/255.f) green:((G)/255.f) blue:((B)/255.f) alpha:(A)]

@implementation CFCProgressHUDUtil

+ (void)show
{
  [[self class] initConfig];
  [CFCProgressHUD show];
  // [SVProgressHUD show];
}

+ (void)showWithStatus:(nullable NSString*)status
{
  [[self class] initConfig];
  [CFCProgressHUD show:status];
  // [SVProgressHUD showWithStatus:status];
}

+ (void)showProgress:(float)progress
{
  [[self class] initConfig];
  [SVProgressHUD showProgress:progress];
}

+ (void)showProgress:(float)progress status:(nullable NSString*)status
{
  [[self class] initConfig];
  [SVProgressHUD showProgress:progress status:status];
}

+ (void)showInfoWithStatus:(nullable NSString*)status
{
  [[self class] initConfig];
  [SVProgressHUD showInfoWithStatus:status];
}

+ (void)showSuccessWithStatus:(nullable NSString*)status
{
  [[self class] initConfig];
  [SVProgressHUD showSuccessWithStatus:status];
}

+ (void)showErrorWithStatus:(nullable NSString*)status
{
  [[self class] initConfig];
  [SVProgressHUD showErrorWithStatus:status];
  
}

+ (void)showImage:(nonnull UIImage*)image status:(nullable NSString*)status
{
  [[self class] initConfig];
  [SVProgressHUD showImage:image status:status];
}

+ (void)dismiss
{
  [[self class] initConfig];
  [SVProgressHUD dismiss];
  [CFCProgressHUD dismiss];
}

+ (void)dismissWithDelay:(NSTimeInterval)delay
{
  [[self class] initConfig];
  [SVProgressHUD dismissWithDelay:delay];
}

+ (void)dismissWithCompletion:(nullable NEXProgressHUDDismissCompletion)completion
{
  [[self class] initConfig];
  [SVProgressHUD dismissWithCompletion:completion];
}

+ (BOOL)isVisible
{
  return [SVProgressHUD isVisible];
}

#pragma mark - Private

+ (void)initConfig
{
  [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
  [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
  [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
  //
  [CFCProgressHUD statusColor:[UIColor whiteColor]];
  [CFCProgressHUD statusFont:[UIFont systemFontOfSize:14]];
  [CFCProgressHUD hudColor:CFC_PROGRESS_HUDUtil_COLOR_RGBA(0, 0, 0, 0.9)];
}

@end




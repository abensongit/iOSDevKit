
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CFCSysCore : NSObject

#pragma mark MJRefresh下拉加载提示信息
UIKIT_EXTERN CGFloat const CFCRefreshAutoHeaderFontSize;
UIKIT_EXTERN NSString *const CFCRefreshAutoHeaderColor;
UIKIT_EXTERN NSString *const CFCRefreshAutoHeaderIdleText;
UIKIT_EXTERN NSString *const CFCRefreshAutoHeaderPullingText;
UIKIT_EXTERN NSString *const CFCRefreshAutoHeaderRefreshingText;

#pragma mark 上拉刷新提示信息
UIKIT_EXTERN CGFloat const CFCRefreshAutoFooterFontSize;
UIKIT_EXTERN NSString *const CFCRefreshAutoFooterColor;
UIKIT_EXTERN NSString *const CFCRefreshAutoFooterIdleText;
UIKIT_EXTERN NSString *const CFCRefreshAutoFooterRefreshingText;
UIKIT_EXTERN NSString *const CFCRefreshAutoFooterNoMoreDataText;

#pragma mark 加载提示信息
UIKIT_EXTERN NSString *const CFCLoadingProgessHUDText;

@end

NS_ASSUME_NONNULL_END

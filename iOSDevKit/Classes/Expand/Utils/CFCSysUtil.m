
#import "CFCSysUtil.h"

@implementation CFCSysUtil

#pragma mark -
#pragma mark 验证对象是否为空（数组、字典、字符串）
+ (BOOL)validateObjectIsNull:(id)obj
{
    if (nil == obj || obj == [NSNull null]) {
        return YES;
    }
    
    // 字典
    if ([obj isKindOfClass:[NSDictionary class]]) {
        
        if([obj isKindOfClass:[NSNull class]]) {
            return YES;
        }
    }
    // 数组
    else if ([obj isKindOfClass:[NSArray class]]) {
        
        if([obj isKindOfClass:[NSNull class]]) {
            return YES;
        }
    }
    // 字符串
    else if ([obj isKindOfClass:[NSString class]]) {
        
        return [CFCSysUtil validateStringEmpty:obj];
    }
    
    return NO;
}

#pragma mark 验证字符串是否为空
+ (BOOL)validateStringEmpty:(NSString *)value
{
    if (nil == value
        || [@"NULL" isEqualToString:value]
        || [value isEqualToString:@"<null>"]
        || [value isEqualToString:@"(null)"]
        || [value isEqualToString:@"null"]) {
        return YES;
    }
    // 删除两端的空格和回车
    NSString *str = [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return (str.length <= 0);
}

#pragma mark 验证字符串是否为URL
+ (BOOL)validateStringUrl:(NSString *)url
{
    NSString *regex =@"[a-zA-z]+://[^\\s]*";
    NSPredicate *urlTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [urlTest evaluateWithObject:url];
}

#pragma mark -
#pragma mark 验证请求数据是否成功
+ (BOOL)validateResultCodeIsSuccess:(NSInteger)resultCode
{
    if (200 == resultCode) {
        return YES;
    }
    return NO;
}

#pragma mark -
#pragma mark 删除字符串两端的空格与回车
+ (NSString *)stringByTrimmingWhitespaceAndNewline:(NSString *)value
{
    if ([CFCSysUtil validateObjectIsNull:value]) {
        return @"";
    }
    return [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

#pragma mark 删除字符串中的空格与回车
+ (NSString *)stringRemoveSpaceAndWhitespaceAndNewline:(NSString *)value
{
    NSString *temp = [value stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp = [temp stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    temp = [temp stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return temp;
}

#pragma mark -
#pragma mark 获取当前时间
+ (NSString *)getCurrentTimeStamp
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd hh:mm:ss.SSS"];
    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    return dateString;
}

#pragma mark 获取所有字体名称列表
+ (NSArray<NSString *> *)getAllFontFamilyNames
{
    NSMutableArray<NSString *> *fontNames = [NSMutableArray array];
    for(NSString *fontfamilyname in [UIFont familyNames]) {
        CFCLog(@"Family:'%@'",fontfamilyname);
        for(NSString *fontName in [UIFont fontNamesForFamilyName:fontfamilyname]) {
            [fontNames addObject:fontName];
            CFCLog(@"\tFont:'%@'",fontName);
        }
    }
    return [NSArray arrayWithArray:fontNames];
}

@end


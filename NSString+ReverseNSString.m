//
//  NSString+ReverseNSString.m
//  Category
//
//  Created by shangxiaonan on 13-12-31.
//  Copyright (c) 2013年 Renjiale. All rights reserved.
//

#import "NSString+ReverseNSString.h"

@implementation NSString (ReverseNSString)
+ (NSString *)reverseString:(NSString *)strSrc
{
    NSMutableString* reverseString = [[NSMutableString alloc] init];
    NSInteger charIndex = [strSrc length];
    while (charIndex > 0) {
        charIndex --;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reverseString appendString:[strSrc substringWithRange:subStrRange]];
    }
    return reverseString;
}
@end

//
//  NSString+Regex.m
//  WHYFoudationCategory
//
//  Created by 王洪运 on 16/6/7.
//  Copyright © 2016年 王洪运. All rights reserved.
//

#import "NSString+Regex.h"

@implementation NSString (Regex)

- (BOOL)isEmoji {
    
    NSString *emoji = @"[^\\u0020-\\u007E\\u00A0-\\u00BE\\u2E80-\\uA4CF\\uF900-\\uFAFF\\uFE30-\\uFE4F\\uFF00-\\uFFEF\\u0080-\\u009F\\u2000-\\u201f\r\n]*$";
    
    NSPredicate *regexEmoji = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emoji];
    
    if ([regexEmoji evaluateWithObject:self]) return YES;
    
    return NO;
}

- (BOOL)isHans {
    
    NSString *hans = @"^[\\u4e00-\\u9fa5]*$";
    
    NSPredicate *regexHans = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", hans];
    
    if ([regexHans evaluateWithObject:self]) return YES;
    
    return NO;
}

- (BOOL)isNumber {
    
    NSString *number = @"^\\d*$";
    
    NSPredicate *regexNumber = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", number];
    
    if ([regexNumber evaluateWithObject:self]) return YES;
    
    return NO;
}

- (BOOL)isCharacter {
    
    NSString *charcter = @"^[a-zA-Z]*$";
    
    NSPredicate *regexCharacter = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", charcter];
    
    if ([regexCharacter evaluateWithObject:self]) return YES;
    
    return NO;
}



- (BOOL)isPhoneString {
    
    if (self.length < 11) return NO;
    
    /**
     移动号段：
     134 135 136 137 138 139 150 151 152 157 158 159 178 182 183 184 187 188
     联通号段：
     130 131 132 155 156 171 175 176 185 186
     电信号段：
     133 153 173 177 180 181 189
     虚拟运营商:
     170
     */
    NSString *mobile = @"^1(3[0-9]|5[0-3,5-9]|7[0,1,3,5-8]|8[0-9])\\d{8}$";
    
    NSPredicate *regexPhone = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobile];
    
    if ([regexPhone evaluateWithObject:self]) return YES;
    
    return NO;
}

@end

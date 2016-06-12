//
//  NSString+Regex.h
//  WHYFoudationCategory
//
//  Created by 王洪运 on 16/6/7.
//  Copyright © 2016年 王洪运. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Regex)

/// 检查是否是表情
///
/// @return 是否是表情
- (BOOL)isEmoji;

/// 检查是否是手机号
///
/// @return 是否是手机号
- (BOOL)isPhoneString;

/// 检查是否是数字
///
/// @return 是否是数字
- (BOOL)isNumber;

/// 检查是否是字母
///
/// @return 是否是字母
- (BOOL)isCharacter;

/// 检查是否是汉字
///
/// @return 是否是汉字
- (BOOL)isHans;

@end

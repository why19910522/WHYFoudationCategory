//
//  UIColor+Extension.h
//  WHYFoudationCategory
//
//  Created by 王洪运 on 16/6/7.
//  Copyright © 2016年 王洪运. All rights reserved.
//

#import <UIKit/UIKit.h>

#define RGBColor(r, g, b)  [UIColor colorWithRed:(r) / 255.0 green:(g) / 255.0 blue:(b) / 255.0 alpha:1.0]

#define RGBAColor(r, g, b, a)  [UIColor colorWithRed:(r) / 255.0 green:(g) / 255.0 blue:(b) / 255.0 alpha:(a)]

#define RandomColor [UIColor randomColor]

#define HexColor(_hex_)   [UIColor colorWithHexString:((__bridge NSString *)CFSTR(#_hex_))]

@interface UIColor (Extension)

/// 随机颜色
+(UIColor *)randomColor;

/// 用HexString创建一个color
///
/// @param hexStr HexString
///
/// @return color
+ (UIColor *)colorWithHexString:(NSString *)hexStr;

@end

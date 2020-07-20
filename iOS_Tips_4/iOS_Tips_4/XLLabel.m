//
//  XLLabel.m
//  iOS_Tips_4
//
//  Created by yuanshi on 2020/7/20.
//  Copyright © 2020 yuanshi. All rights reserved.
//

#import "XLLabel.h"

@implementation XLLabel

// UILabel添加中划线
- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    // 上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 颜色
    [self.textColor setStroke];
    // 线的起点
    CGFloat y = self.frame.size.height * 0.5;
    CGContextMoveToPoint(context, 0, y);
    // 字体宽度
    CGSize size = [self.text sizeWithAttributes:@{NSFontAttributeName:self.font}];
    // 线的终点
    CGContextAddLineToPoint(context, size.width, y);
    // 渲染
    CGContextStrokePath(context);
}

@end

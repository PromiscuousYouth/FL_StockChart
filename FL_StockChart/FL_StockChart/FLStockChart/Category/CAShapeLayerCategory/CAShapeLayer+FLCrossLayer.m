//
//  CAShapeLayer+FLCrossLayer.m
//  FL_StockChart
//
//  Created by mac on 2018/2/2.
//  Copyright © 2018年 LZ. All rights reserved.
//

#import "CAShapeLayer+FLCrossLayer.h"

@implementation CAShapeLayer (FLCrossLayer)

+ (CAShapeLayer *)getRectLayerWithRect:(CGRect)frameRect dateRect:(CGRect)dataRect dateStr:(NSString *)dataStr fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor backgroundColor:(UIColor *)bgColor {
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:frameRect];
    layer.path = path.CGPath;
    layer.strokeColor = textColor.CGColor;
    layer.fillColor = bgColor.CGColor;
    
    CATextLayer *textLayer = [CATextLayer layer];
    textLayer.frame = dataRect;
    textLayer.string = dataStr;
    textLayer.fontSize = fontSize;
    textLayer.foregroundColor = textColor.CGColor;
    textLayer.backgroundColor = [UIColor clearColor].CGColor;
    textLayer.alignmentMode = kCAAlignmentCenter;
    textLayer.contentsScale = [UIScreen mainScreen].scale;
    
    [layer addSublayer:textLayer];
    return layer;
}

@end
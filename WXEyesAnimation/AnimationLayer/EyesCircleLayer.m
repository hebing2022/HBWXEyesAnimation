//
//  EyesCircleLayer.m
//  WXEyesAnimation
//
//  Created by hebing on 16/9/13.
//  Copyright © 2016年 hebing. All rights reserved.
//

#import "EyesCircleLayer.h"
#import <UIKit/UIKit.h>
@interface EyesCircleLayer()

@property (nonatomic ,strong) UIBezierPath *circlePath;

@end
@implementation EyesCircleLayer

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.path = self.circlePath.CGPath;
        self.lineWidth = 1.0f;
        self.strokeColor = [UIColor whiteColor].CGColor;
        self.fillColor = [UIColor clearColor].CGColor;
        self.strokeEnd = 0.5f;
        self.strokeStart = 0.5f;
    }
    return self;
}
- (UIBezierPath *)circlePath
{
    if (!_circlePath) {
       
        _circlePath = [UIBezierPath bezierPath];
        [_circlePath addArcWithCenter:CGPointMake(32, 22) radius:15 startAngle:(211.f / 180.f) * M_PI endAngle:(571.f / 180.f) * M_PI clockwise:YES];
    }
    return _circlePath;
}
@end

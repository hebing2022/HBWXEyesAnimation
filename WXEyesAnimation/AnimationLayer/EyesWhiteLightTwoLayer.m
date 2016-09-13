//
//  EyesWhiteLightTwoLayer.m
//  WXEyesAnimation
//
//  Created by hebing on 16/9/13.
//  Copyright © 2016年 hebing. All rights reserved.
//

#import "EyesWhiteLightTwoLayer.h"
#import <UIKit/UIKit.h>

@interface EyesWhiteLightTwoLayer()

@property (nonatomic ,strong) UIBezierPath *lightTwoPath;

@end
@implementation EyesWhiteLightTwoLayer

- (instancetype)init
{
    self = [super init];
    
    if (self) {
     
        
        self.path = self.lightTwoPath.CGPath;
        self.lineWidth = 0;
        self.strokeColor = [UIColor whiteColor].CGColor;
    }
    
    return self;
}
- (UIBezierPath *)lightTwoPath
{
    if (!_lightTwoPath) {
        
        _lightTwoPath = [UIBezierPath bezierPath];
        [_lightTwoPath addArcWithCenter:CGPointMake(32, 22) radius:10 startAngle:(211.f / 180.f) * M_PI endAngle:(220.f / 180.f) * M_PI clockwise:YES];
    }
    
    return _lightTwoPath;
}
@end

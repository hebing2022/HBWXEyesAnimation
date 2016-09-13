//
//  EyesBottomArcLayer.m
//  WXEyesAnimation
//
//  Created by hebing on 16/9/13.
//  Copyright © 2016年 hebing. All rights reserved.
//

#import "EyesBottomArcLayer.h"
#import <UIKit/UIKit.h>
@interface EyesBottomArcLayer()

@property (nonatomic ,strong) UIBezierPath *bottomArcPath;

@end
@implementation EyesBottomArcLayer
- (instancetype)init
{
    self = [super init];
    
    if (self) {
        
        self.path = self.bottomArcPath.CGPath;
        self.strokeColor = [UIColor whiteColor].CGColor;
        self.fillColor = [UIColor clearColor].CGColor;
        self.lineWidth = 1.0f;
        self.strokeEnd = 0.5f;
        self.strokeStart = 0.5f;
    }
    
    return self;
}
- (UIBezierPath *)bottomArcPath
{
    if (!_bottomArcPath) {
        
        _bottomArcPath = [UIBezierPath bezierPath];
        [_bottomArcPath moveToPoint:CGPointMake(0, 22)];
        [_bottomArcPath addQuadCurveToPoint:CGPointMake(64, 22) controlPoint:CGPointMake(32, 59)];
    }
    
    return _bottomArcPath;
}
@end

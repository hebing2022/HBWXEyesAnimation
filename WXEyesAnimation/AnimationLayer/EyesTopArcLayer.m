//
//  EyesTopArcLayer.m
//  WXEyesAnimation
//
//  Created by hebing on 16/9/13.
//  Copyright © 2016年 hebing. All rights reserved.
//

#import "EyesTopArcLayer.h"
#import <UIKit/UIKit.h>
@interface EyesTopArcLayer()

@property (nonatomic ,strong) UIBezierPath *topArcPath;

@end
@implementation EyesTopArcLayer
- (instancetype)init
{
    self = [super init];
    
    if (self) {
        
        self.path = self.topArcPath.CGPath;
        self.strokeColor = [UIColor whiteColor].CGColor;
        self.fillColor = [UIColor clearColor].CGColor;
        self.lineWidth = 1.0f;
        self.strokeEnd = 0.5f;
        self.strokeStart = 0.5f;
    }
    
    return self;
}
- (UIBezierPath *)topArcPath
{
    if (!_topArcPath) {
        
        _topArcPath = [UIBezierPath bezierPath];
        [_topArcPath moveToPoint:CGPointMake(0, 22)];
        [_topArcPath addQuadCurveToPoint:CGPointMake(64, 22) controlPoint:CGPointMake(32,-15)];
    }
    
    return _topArcPath;
}

@end

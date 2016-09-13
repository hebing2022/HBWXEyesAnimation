//
//  EyesWhiteLightOneLayer.m
//  WXEyesAnimation
//
//  Created by hebing on 16/9/12.
//  Copyright © 2016年 hebing. All rights reserved.
//

#import "EyesWhiteLightOneLayer.h"
#import <UIKit/UIKit.h>
@interface EyesWhiteLightOneLayer()

@property (nonatomic ,strong) UIBezierPath *lightOnePath;

@end
@implementation EyesWhiteLightOneLayer
- (instancetype)init
{
    self = [super init];
    
    if (self) {
        
        self.path = self.lightOnePath.CGPath;
        self.lineWidth = 0;
        self.strokeColor = [UIColor whiteColor].CGColor;
        
    }
    
    return self;
}
- (UIBezierPath *)lightOnePath
{
    if (!_lightOnePath) {
       
        _lightOnePath = [UIBezierPath bezierPath];
        [_lightOnePath addArcWithCenter:CGPointMake(32, 22) radius:10 startAngle:(230.f / 180.f) * M_PI endAngle:(265.f / 180.f) * M_PI clockwise:YES];
        
    }
    
    return _lightOnePath;
}
@end

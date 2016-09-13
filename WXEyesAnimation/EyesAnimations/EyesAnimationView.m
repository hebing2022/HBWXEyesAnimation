//
//  EyesAnimationView.m
//  WXEyesAnimation
//
//  Created by hebing on 16/9/12.
//  Copyright © 2016年 hebing. All rights reserved.
//

#import "EyesAnimationView.h"
#import "EyesWhiteLightOneLayer.h"
#import "EyesWhiteLightTwoLayer.h"
#import "EyesCircleLayer.h"
#import "EyesTopArcLayer.h"
#import "EyesBottomArcLayer.h"
@interface EyesAnimationView()

@property (nonatomic ,strong) EyesWhiteLightOneLayer *lightoneLayer;

@property (nonatomic ,strong) EyesWhiteLightTwoLayer *lightTwoLayer;

@property (nonatomic ,strong) EyesCircleLayer *circleLayer;

@property (nonatomic ,strong) EyesTopArcLayer *topArcLayer;

@property (nonatomic ,strong) EyesBottomArcLayer *bottomArcLayer;

@end
@implementation EyesAnimationView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.backgroundColor = [UIColor blackColor];
        [self.layer addSublayer:self.lightoneLayer];
        [self.layer addSublayer:self.lightTwoLayer];
        [self.layer addSublayer:self.circleLayer];
        [self.layer addSublayer:self.topArcLayer];
        [self.layer addSublayer:self.bottomArcLayer];
    }
    
    return self;
}
- (EyesWhiteLightOneLayer *)lightoneLayer
{
    if (!_lightoneLayer) {
        
        _lightoneLayer = [[EyesWhiteLightOneLayer alloc] init];
    }
    
    return _lightoneLayer;
}
- (EyesWhiteLightTwoLayer *)lightTwoLayer
{
    if (!_lightTwoLayer) {
        
        _lightTwoLayer = [[EyesWhiteLightTwoLayer alloc] init];
    }
    
    return _lightTwoLayer;
}
- (EyesCircleLayer *)circleLayer
{
    if (!_circleLayer) {
        
        _circleLayer = [[EyesCircleLayer alloc] init];
        
    }
    
    return _circleLayer;
}
- (EyesTopArcLayer *)topArcLayer
{
    if (!_topArcLayer) {
        
        _topArcLayer = [[EyesTopArcLayer alloc] init];
    }
    
    return _topArcLayer;
}
- (EyesBottomArcLayer *)bottomArcLayer
{
    if (!_bottomArcLayer) {
    
        _bottomArcLayer = [[EyesBottomArcLayer alloc] init];
    }
    
    return _bottomArcLayer;    
}
- (void)anmationProgress:(CGFloat)offset
{
    CGFloat flagY = -42;
    
    if (offset < flagY - 10) {
        
        if (self.lightoneLayer.lineWidth < 5) {
            
            self.lightoneLayer.lineWidth += 1.f;
            self.lightTwoLayer.lineWidth += 1.f;
        }
    }
    
    if (offset < flagY - 15) {
        
        if (self.circleLayer.strokeEnd < 1 && self.circleLayer.strokeStart > 0) {
            
            self.circleLayer.strokeStart -= 0.1f;
            self.circleLayer.strokeEnd += 0.1f;
        }
    }
    
    if (offset < flagY - 20) {
        
        if (self.topArcLayer.strokeEnd < 1 && self.topArcLayer.strokeStart > 0) {
            
            self.topArcLayer.strokeStart -= 0.1f;
            self.topArcLayer.strokeEnd += 0.1f;
            
            self.bottomArcLayer.strokeStart -= 0.1f;
            self.bottomArcLayer.strokeEnd += 0.1f;
        }
    }
    
    if (offset > flagY - 10) {
        
        if (self.lightoneLayer.lineWidth > 0) {
            
            self.lightoneLayer.lineWidth -= 1.f;
            self.lightTwoLayer.lineWidth -= 1.f;
        }
    }
    
    if (offset > flagY - 15) {
        
        if (self.circleLayer.strokeEnd > 0.5 && self.circleLayer.strokeStart < 0.5) {
            
            self.circleLayer.strokeStart += 0.1f;
            self.circleLayer.strokeEnd -= 0.1f;
        }
    }
    
    if (offset > flagY - 20) {
        
        if (self.topArcLayer.strokeEnd > 0.5 && self.topArcLayer.strokeStart < 0.5) {
            
            self.topArcLayer.strokeStart += 0.1f;
            self.topArcLayer.strokeEnd -= 0.1f;
            
            self.bottomArcLayer.strokeStart += 0.1f;
            self.bottomArcLayer.strokeEnd -= 0.1f;
        }
    }
    
}
@end

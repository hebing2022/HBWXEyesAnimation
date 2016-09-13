# HBWXEyesAnimation
#模仿微信下拉的眼睛动画
###1.1先画出眼睛里面白色的光一共有2点
```
- (UIBezierPath *)lightOnePath
{
    if (!_lightOnePath) {
       
        _lightOnePath = [UIBezierPath bezierPath];
        [_lightOnePath addArcWithCenter:CGPointMake(32, 22) radius:10 startAngle:(230.f / 180.f) * M_PI endAngle:(265.f / 180.f) * M_PI clockwise:YES];
        
    }
    
    return _lightOnePath;
}
```
```
- (UIBezierPath *)lightTwoPath
{
    if (!_lightTwoPath) {
        
        _lightTwoPath = [UIBezierPath bezierPath];
        [_lightTwoPath addArcWithCenter:CGPointMake(32, 22) radius:10 startAngle:(211.f / 180.f) * M_PI endAngle:(220.f / 180.f) * M_PI clockwise:YES];
    }
    
    return _lightTwoPath;
}
```
###1.2画出里面的圆圈
```
- (UIBezierPath *)circlePath
{
    if (!_circlePath) {
       
        _circlePath = [UIBezierPath bezierPath];
        [_circlePath addArcWithCenter:CGPointMake(32, 22) radius:15 startAngle:(211.f / 180.f) * M_PI endAngle:(571.f / 180.f) * M_PI clockwise:YES];
    }
    return _circlePath;
}
```
###1.3画外面上下弧线
```
- (UIBezierPath *)topArcPath
{
    if (!_topArcPath) {
        
        _topArcPath = [UIBezierPath bezierPath];
        [_topArcPath moveToPoint:CGPointMake(0, 22)];
        [_topArcPath addQuadCurveToPoint:CGPointMake(64, 22) controlPoint:CGPointMake(32,-15)];
    }
    
    return _topArcPath;
}
```
```
- (UIBezierPath *)bottomArcPath
{
    if (!_bottomArcPath) {
        
        _bottomArcPath = [UIBezierPath bezierPath];
        [_bottomArcPath moveToPoint:CGPointMake(0, 22)];
        [_bottomArcPath addQuadCurveToPoint:CGPointMake(64, 22) controlPoint:CGPointMake(32, 59)];
    }
    
    return _bottomArcPath;
}
```
###1.4通过tableview的contentoffset来控制动画的实现
```
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
```
#这是本人第一次比较正式的upload代码，有什么不好的地方请大家多多包涵，另外有什么问题可以在issue里面提，转载的话请注明出处！

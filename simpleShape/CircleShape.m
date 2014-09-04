//
//  CircleShape.m
//  pitStop
//
//  Created by dofl on 6/17/13.
//  Copyright (c) 2013 firstborn. All rights reserved.
//

#import "CircleShape.h"

@interface CircleShape()
{
    CGFloat _size;
    UIColor *_color;
}

@end


@implementation CircleShape

-(id)initWithSize:(CGFloat)inSize andColor:(UIColor*)inColor
{
    _size = inSize;
    _color = inColor;
    
    self = [super initWithFrame:CGRectMake(0, 0, _size, _size)];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    // Circle
    CGContextSetFillColorWithColor(contextRef, _color.CGColor);
    CGRect circlePoint = (CGRectMake(0, 0, _size, _size));
    CGContextFillEllipseInRect(contextRef, circlePoint);
    
    
}

-(void)updateColor:(UIColor*)inColor
{
    _color = inColor;
    [self setNeedsDisplay];
}


@end

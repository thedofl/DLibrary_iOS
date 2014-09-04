//
//  CrossCircle.m
//  pitStop
//
//  Created by dofl on 6/17/13.
//  Copyright (c) 2013 firstborn. All rights reserved.
//

#import "CrossCircle.h"

@implementation CrossCircle

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    // clear context
    CGContextClearRect(contextRef, self.frame);
    
    // Circle
    CGContextSetRGBFillColor(contextRef, 163.0/255.0, 126.0/255.0, 44.0/255.0, 1.0);
    CGRect circlePoint = (CGRectMake(0, 0, 24, 24));
    CGContextFillEllipseInRect(contextRef, circlePoint);
    
    
    
    // Corss lines
    CGContextSetStrokeColorWithColor(contextRef, [UIColor whiteColor].CGColor);
    CGContextSetLineWidth(contextRef, 1.0);
    
    CGContextMoveToPoint(contextRef, 12,6);
    CGContextAddLineToPoint(contextRef, 12, 18);
    
    CGContextMoveToPoint(contextRef, 6,12);
    CGContextAddLineToPoint(contextRef, 18, 12);
    
    CGContextStrokePath(contextRef);
}


@end

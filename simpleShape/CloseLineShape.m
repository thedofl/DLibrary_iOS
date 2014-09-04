//
//  CloseLineShape.m
//  pitStop
//
//  Created by dofl on 6/17/13.
//  Copyright (c) 2013 firstborn. All rights reserved.
//

#import "CloseLineShape.h"

@interface CloseLineShape()
{
    CGFloat _size;
    UIColor *_color;
}

@end



@implementation CloseLineShape

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
    // clear context
    CGContextClearRect(contextRef, self.frame);
    
    
    // Corss lines
    CGContextSetStrokeColorWithColor(contextRef, _color.CGColor);
    CGContextSetLineWidth(contextRef, 1.0);
    
    CGContextMoveToPoint(contextRef, 0, 0);
    CGContextAddLineToPoint(contextRef, _size, _size);
    
    CGContextMoveToPoint(contextRef, _size, 0);
    CGContextAddLineToPoint(contextRef, 0, _size);
    
    CGContextStrokePath(contextRef);
}


@end

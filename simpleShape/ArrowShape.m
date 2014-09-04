//
//  ArrowShape.m
//  ROLEX2850
//
//  Created by dofl on 7/23/13.
//  Copyright (c) 2013 firstborn. All rights reserved.
//

#import "ArrowShape.h"


@interface ArrowShape()
{
    CGSize _size;
    UIColor *_color;
    NSInteger _direction;
}

@end

@implementation ArrowShape

-(id)initWithFrame:(CGRect)inFrame andColor:(UIColor*)inColor andDirection:(NSInteger)inDir;
{
    _size = inFrame.size;
    _color = inColor;
    _direction = inDir;
    
    self = [super initWithFrame:inFrame];
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
    
    if(_direction == 1)
    {
        CGContextMoveToPoint(contextRef, 0, 0);
        CGContextAddLineToPoint(contextRef, _size.width, _size.height*0.5);
        CGContextAddLineToPoint(contextRef, _size.width, 0);
    }
    else
    {
        CGContextMoveToPoint(contextRef, _size.width, 0);
        CGContextAddLineToPoint(contextRef, 0, _size.height*0.5);
        CGContextAddLineToPoint(contextRef, _size.width, _size.height);

    }
    
    CGContextStrokePath(contextRef);
}

@end

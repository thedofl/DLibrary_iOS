//
//  UserBlockView.m
//  DGrid
//
//  Created by dofl on 7/27/12.
//
//

#import "UserBlockView.h"

@interface UserBlockView()
{
    BOOL _showDebug;
}

@end


@implementation UserBlockView



- (id)initWithFrame:(CGRect)frame andShowDebug:(BOOL)inDebug
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.backgroundColor = [UIColor clearColor];
        
        _showDebug = inDebug;
    }
    return self;
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    if(!_showDebug) return;
    
    
     // Drawing code
     CGContextRef context = UIGraphicsGetCurrentContext();
     
     CGContextSetStrokeColorWithColor(context, [UIColor colorWithRed:1 green:1 blue:0 alpha:1.f].CGColor);
     
     // Draw them with a 2.0 stroke width so they are a bit more visible.
     CGContextSetLineWidth(context, 1.0);
     
     
     float w = self.frame.size.width;
     float h = self.frame.size.height;
     
     CGContextMoveToPoint(context, 0 , 0); //start at this point
     CGContextAddLineToPoint(context, w, h); //draw to this point

    CGContextMoveToPoint(context, w , 0); //start at this point
    CGContextAddLineToPoint(context, 0, h); //draw to this point
     
      
     // and now draw the Path!
     CGContextStrokePath(context);

}



@end

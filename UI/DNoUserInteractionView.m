//
//  NoUserInteractionView.m
//  ViewApp
//
//  Created by Dofl Y.H. Yun on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DNoUserInteractionView.h"

@implementation DNoUserInteractionView


//


/*
 TODO:
 Need to reverse of sub views' order
 */
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event 
{
    for( UIView *view in self.subviews)
    {
        // TODO - Need to check userInteractionEnbled???
        if(view.userInteractionEnabled)
        {
            CGPoint pointInB = [view convertPoint:point fromView:self];
    
            if ([view pointInside:pointInB withEvent:event]) return view;
        }
    }
    
    return [super hitTest:point withEvent:event];
}

@end

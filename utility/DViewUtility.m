//
// Created by Dofl Yun on 8/19/14.
// Copyright (c) 2014 thedofl. All rights reserved.
//

#import "DViewUtility.h"


@implementation DViewUtility


+(void)resizeToFitSubviews:(UIView *)inView
{
    float w = 0;
    float h = 0;

    for (UIView *v in [inView subviews])
    {
        float fw = v.frame.origin.x + v.frame.size.width;
        float fh = v.frame.origin.y + v.frame.size.height;
        w = MAX(fw, w);
        h = MAX(fh, h);
    }
    [inView setFrame:CGRectMake(inView.frame.origin.x, inView.frame.origin.y, w, h)];
}


@end
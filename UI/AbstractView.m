//
//  AbstractView.m
//  FaceApp
//
//  Created by dofl on 3/14/14.
//  Copyright (c) 2014 firstborn. All rights reserved.
//

#import "AbstractView.h"

@implementation AbstractView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)setup
{
    //
}


-(void)dispose
{
    //
}
@end

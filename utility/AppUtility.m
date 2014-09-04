//
//  AppUtility.m
//  Camera
//
//  Created by dofl on 7/24/12.
//  Copyright (c) 2012 dofl. All rights reserved.
//

#import "AppUtility.h"

@implementation AppUtility

+(void)disableIdleTimer
{
    [UIApplication sharedApplication].idleTimerDisabled = YES;
}

@end

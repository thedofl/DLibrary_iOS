//
//  DTimer.m
//  Rolex
//
//  Created by dofl on 2/15/13.
//  Copyright (c) 2013 firstborn. All rights reserved.
//

#import "DTimer.h"


@interface DTimer (Private)

- (void) start;
- (NSTimeInterval) stop;

@end

@implementation DTimer

static DTimer *instance = nil;

+ (DTimer *)sharedTimer
{
	if (instance == nil)
    {
		instance = [[DTimer alloc] init];
	}
	return instance;
}

+ (void) start
{
	[[DTimer sharedTimer] start];
}

+ (NSTimeInterval) stop
{
	return [[DTimer sharedTimer] stop];
}


////////////


- (id)init {
    self = [super init];
    if (self) {
        //
    }
    return self;
}


- (void) start
{
	startTime = [NSDate date];
}

- (NSTimeInterval) stop
{
	NSTimeInterval elapsed = 0 - [startTime timeIntervalSinceNow];
	startTime = nil;
	return elapsed;
}



@end

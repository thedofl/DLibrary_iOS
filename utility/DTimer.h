//
//  DTimer.h
//  Rolex
//
//  Created by dofl on 2/15/13.
//  Copyright (c) 2013 firstborn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DTimer : NSObject
{
    NSDate *startTime;
}

+ (DTimer *)sharedTimer;
+ (void) start;
+ (NSTimeInterval) stop;



@end

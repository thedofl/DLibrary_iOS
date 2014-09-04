//
//  DDeviceUtility.h
//  AirPlaneMode
//
//  Created by Dofl Yun on 9/4/14.
//  Copyright (c) 2014 firstborn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDeviceUtility : NSData

+ (BOOL )checkIfAirplaneModeIsOn;
+ (NSDictionary *)getIPAddresses;

@end

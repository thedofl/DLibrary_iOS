//
// Created by Dofl Yun on 8/20/14.
// Copyright (c) 2014 thedofl. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DLabelUtility : NSObject

+(void)updateCopyFor:(UILabel *)inLabel withCopy:(NSString *)inCopy;

+(void)fitToSizeForHeightOnly:(UILabel *)inLabel;
@end
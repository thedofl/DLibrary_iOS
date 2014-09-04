//
//  DPathUtility.m
//  InstaConnection
//
//  Created by dofl on 7/23/12.
//
//

#import "DPathUtility.h"

@implementation DPathUtility



/*
 ie.
 NSString *savePath = [ DPathUtility.documentsFolder stringByAppendingPathComponent:@"Screenshot.igo" ];
 */
+(NSString *)documentsFolder
{
    return [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
}

@end

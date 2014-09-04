//
// Created by Dofl Yun on 8/20/14.
// Copyright (c) 2014 thedofl. All rights reserved.
//

#import "DStringUtility.h"


@implementation DStringUtility



+(NSString *)makeStringShoter:(NSString *)inStr byMaxLength:(NSInteger)inLength
{
    // define the range you're interested in
    NSRange stringRange = {0, MIN([inStr length], inLength)};

// adjust the range to include dependent chars
    stringRange = [inStr rangeOfComposedCharacterSequencesForRange:stringRange];

// Now you can create the short string
    NSString *shortString = [inStr substringWithRange:stringRange];
    if( [inStr length] > inLength) shortString = [shortString stringByAppendingString:@"..."];
    return shortString;

}
@end
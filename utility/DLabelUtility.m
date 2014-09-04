//
// Created by Dofl Yun on 8/20/14.
// Copyright (c) 2014 thedofl. All rights reserved.
//

#import "DLabelUtility.h"


@implementation DLabelUtility


+(void)updateCopyFor:(UILabel *)inLabel withCopy:(NSString *)inCopy
{
    NSDictionary *attributes = [(NSAttributedString *)inLabel.attributedText attributesAtIndex:0 effectiveRange:NULL];
    inLabel.attributedText = [[NSAttributedString alloc] initWithString:inCopy attributes:attributes];

    [DLabelUtility fitToSizeForHeightOnly:inLabel];
//    [inLabel sizeToFit];

}

+(void)fitToSizeForHeightOnly:(UILabel *)inLabel
{
    CGRect labelFrame = inLabel.frame;
    [inLabel sizeToFit];

    labelFrame.size.height = inLabel.frame.size.height;
    inLabel.frame = labelFrame;
}



@end
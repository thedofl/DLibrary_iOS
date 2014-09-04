//
//  DSequenceImageView.m
//  Rolex Product
//
//  Created by dofl on 5/23/13.
//  Copyright (c) 2013 firstborn. All rights reserved.
//

#import "DSequenceImageView.h"

#import "DCacheUtility.h"


@interface DSequenceImageView()
{
    
    DCacheUtility           *mDCacheUtility;
    
    
}

@end


@implementation DSequenceImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        mDCacheUtility = [ [ DCacheUtility alloc] init];
    }
    return self;
}




-(void)setImageWithImageName:(NSString *)inName;
{
    
    self.image = [mDCacheUtility getCacheImageForKey:inName];
}



-(void)dispose
{
    if(mDCacheUtility)
    {
	    [mDCacheUtility destroyCache];
        mDCacheUtility = nil;
    }
    
    self.image = nil;
}

@end

//
//  SimpleRolloverImageButton.m
//  FaceApp
//
//  Created by dofl on 3/14/14.
//  Copyright (c) 2014 firstborn. All rights reserved.
//

#import "SimpleRolloverImageButton.h"

#import "PViewUtils.h"
#import "DUIBuilder.h"

@interface SimpleRolloverImageButton () {
	UIImageView *mImage;
    
	UIImage *mDefaultImage, *mClickImage;
	CGFloat _offsetX, _offsetY;
}

@end

@implementation SimpleRolloverImageButton


- (id)initWithImageName:(NSString *)inName andClickImageName:(NSString *)inClickImageName andOffsetW:(CGFloat)inOffsetX andHeight:(CGFloat)inHeight
{
    
    
	mDefaultImage = [UIImage imageNamed:inName];
	mClickImage = [UIImage imageNamed:inClickImageName];
    
	mImage = [DUIBuilder createUIImageWithUIImage:mDefaultImage];
	_offsetX = inOffsetX;
	_offsetY = roundf((inHeight - mImage.frame.size.height) * 0.5f);
    
    
	CGRect frame = CGRectMake(0, 0, mImage.frame.size.width + inOffsetX * 2.0, inHeight);
	self = [super initWithFrame:frame];
	if (self) {
        
        //        [PViewUtils moveView:mImage toTopLeft:CGPointMake(inOffsetX, 0.0)];
        
        
        //        self.imageView.image = mDefaultImage;
        
		[self setup];
	}
    
	return self;
}


-(id)initWithImage:(UIImage *)inImage andClickImage:(UIImage *)inClickImage
{
    
    
	mDefaultImage = inImage;
	mClickImage = inClickImage;
    
	mImage = [DUIBuilder createUIImageWithUIImage:mDefaultImage];
    
    
	CGRect frame = CGRectMake(0, 0, mImage.frame.size.width, mImage.frame.size.height);
	self = [super initWithFrame:frame];
	if (self) {
        
        //        [PViewUtils moveView:mImage toTopLeft:CGPointMake(inOffsetX, 0.0)];
        
        
        //        self.imageView.image = mDefaultImage;
        
		[self setup];
	}
    
	return self;
}
-(id)initWithImage:(UIImage *)inImage andClickImage:(UIImage *)inClickImage andOffsetW:(CGFloat)inOffsetX andHeight:(CGFloat)inHeight
{
    
    
	mDefaultImage = inImage;
	mClickImage = inClickImage;
    
	mImage = [DUIBuilder createUIImageWithUIImage:mDefaultImage];
	_offsetX = inOffsetX;
	_offsetY = roundf((inHeight - mImage.frame.size.height) * 0.5f);
    
    
	CGRect frame = CGRectMake(0, 0, mImage.frame.size.width + inOffsetX * 2.0, inHeight);
	self = [super initWithFrame:frame];
	if (self) {
        
        //        [PViewUtils moveView:mImage toTopLeft:CGPointMake(inOffsetX, 0.0)];
        
        
        //        self.imageView.image = mDefaultImage;
        
		[self setup];
	}
    
	return self;
}


- (void)setup {
	[self addSubview:mImage];
    
	[PViewUtils moveView:mImage toTopLeft:CGPointMake(_offsetX, _offsetY)];
    
    
	[self addTarget:self action:@selector(showDownImage) forControlEvents:UIControlEventTouchDown | UIControlEventTouchDragEnter];
	[self addTarget:self action:@selector(showUpImage) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside | UIControlEventTouchDragExit];
    
    
}

- (void)changeDefaultImage:(NSString *)inName {
	mDefaultImage = [UIImage imageNamed:inName];
	mImage.image = mDefaultImage;
}

- (void)showDownImage {
	mImage.image = mClickImage;
}

- (void)showUpImage {
	mImage.image = mDefaultImage;
}


@end
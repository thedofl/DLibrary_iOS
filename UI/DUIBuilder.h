//
//  UIBuilder.h
//  AlertApp
//
//  Created by Dofl Y.H. Yun on 6/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DUIBuilder : NSObject


// --------------------------------------------------------------------------
// UIButton
// --------------------------------------------------------------------------

+(UIButton *) createSimpleUIButtonWithTitle:(NSString *) title andFrame:(CGRect)frame;
+(UIButton *) createUIButtonWithDefaultImage:(NSString *) image;
+(UIButton *) createUIButtonWithDefaultImage:(NSString *) image andWithSelectedImage:(NSString *) selectedImage;

+(UIButton *) createUIButtonWithDefaultImage:(UIImage *) image withHighlightImage:(UIImage *) highlightImage;
+(UIButton *) createUIButtonWithDefaultImage:(UIImage *) image withHighlightImage:(UIImage *) highlightImage andWithSelectedImage:(UIImage *) selectedImage;


+(UIControl *) createUIButtonWithDefaultImage:(NSString *) image andHitArea:(CGSize)inSize;

+(UIButton *) createUIButtonWithFrame:(CGRect) inFrame withDefaultImage:(UIImage *) image andHighlightImage:(UIImage *) highlightImage;


// --------------------------------------------------------------------------
// UIImage
// --------------------------------------------------------------------------
+(UIImageView *) createUIImageWithUIImage:(UIImage *)aUIImage;
+(UIImageView *) createUIImageWithImageName:(NSString *)aImageName;
+(UIImage *) imageFromURLString:(NSString *) aURLString;
+(void) imageFromURLString:(NSString *)aURLString asynchronousIntoUIImageView:(UIImageView *) aUIImageView;


// --------------------------------------------------------------------------
// UILabel
// --------------------------------------------------------------------------
+(UILabel *) createUILabelWithText:(NSString *)inText andFrame:(CGRect)frame;







//////////////////// Transform
+(void) setOriginOfView:(UIView *)aView ByTopLeft:(CGPoint) aPoint;



@end

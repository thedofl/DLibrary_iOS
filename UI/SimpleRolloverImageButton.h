//
//  SimpleRolloverImageButton.h
//  FaceApp
//
//  Created by dofl on 3/14/14.
//  Copyright (c) 2014 firstborn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleRolloverImageButton : UIControl
-(id)initWithImage:(UIImage *)inImage andClickImage:(UIImage *)inClickImage;
-(id)initWithImageName:(NSString *)inName andClickImageName:(NSString *)inClickImageName andOffsetW:(CGFloat)inOffsetX andHeight:(CGFloat)inHeight;
-(id)initWithImage:(UIImage *)inImage andClickImage:(UIImage *)inClickImage andOffsetW:(CGFloat)inOffsetX andHeight:(CGFloat)inHeight;
-(void)changeDefaultImage:(NSString *)inName;

@end

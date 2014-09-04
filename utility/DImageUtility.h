//
//  ImageUtility.h
//  KohlsSanta
//
//  Created by dofl on 10/11/13.
//  Copyright (c) 2013 firstborn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DImageUtility : NSObject

+ (UIImage *)resizeImage:(UIImage*)image newSize:(CGSize)newSize;

+ (UIImage *) imageFromView:(UIView *)inView;
+ (UIImage *) imageFromView:(UIView *)inView withArea:(CGSize)inArea;

+ (UIImage*)imageByCropping:(UIImage *)inImage toRect:(CGRect)inCrop;
@end

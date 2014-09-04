//
//  ImageUtility.m
//  KohlsSanta
//
//  Created by dofl on 10/11/13.
//  Copyright (c) 2013 firstborn. All rights reserved.
//

#import "DImageUtility.h"
#import <QuartzCore/QuartzCore.h>

@implementation DImageUtility


+ (UIImage *)resizeImage:(UIImage*)image newSize:(CGSize)newSize
{
    //UIGraphicsBeginImageContext(newSize);
    // In next line, pass 0.0 to use the current device's pixel scaling factor (and thus account for Retina resolution).
    // Pass 1.0 to force exact pixel size.
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 1.0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}


+ (UIImage *) imageFromView:(UIView *)inView
{
    UIGraphicsBeginImageContextWithOptions(inView.bounds.size, inView.opaque, 0.0);
    [inView.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return img;
}





+ (UIImage *) imageFromView:(UIView *)inView withArea:(CGSize)inArea
{
    UIGraphicsBeginImageContextWithOptions(inArea, inView.opaque, 0.0);
    [inView.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return img;
}

+ (UIImage*)imageByCropping:(UIImage *)inImage toRect:(CGRect)inCrop
{
    CGSize size = inImage.size;
    
    // create a graphics context of the correct size
    UIGraphicsBeginImageContext(inCrop.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // correct for image orientation
    UIImageOrientation orientation = [inImage imageOrientation];
    if(orientation == UIImageOrientationUp)
    {
        CGContextTranslateCTM(context, 0, size.height);
        CGContextScaleCTM(context, 1, -1);
        inCrop = CGRectMake(inCrop.origin.x,
                            -inCrop.origin.y,
                            inCrop.size.width,
                            inCrop.size.height);
    }
    else if(orientation == UIImageOrientationRight)
    {
        CGContextScaleCTM(context, 1.0, -1.0);
        CGContextRotateCTM(context, (CGFloat) (-M_PI/2));
        size = CGSizeMake(size.height, size.width);
        inCrop = CGRectMake(inCrop.origin.y,
                            inCrop.origin.x,
                            inCrop.size.height,
                            inCrop.size.width);
    }
    else if(orientation == UIImageOrientationDown)
    {
        CGContextTranslateCTM(context, size.width, 0);
        CGContextScaleCTM(context, -1, 1);
        inCrop = CGRectMake(-inCrop.origin.x,
                            inCrop.origin.y,
                            inCrop.size.width,
                            inCrop.size.height);
    }
    // draw the image in the correct place
    CGContextTranslateCTM(context, -inCrop.origin.x, -inCrop.origin.y);
    CGContextDrawImage(context,
                       CGRectMake(0,0, size.width, size.height),
                       inImage.CGImage);
    // and pull out the cropped image
    UIImage *croppedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return croppedImage;
    
}





@end

//
//  UIBuilder.m
//  AlertApp
//
//  Created by Dofl Y.H. Yun on 6/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DUIBuilder.h"

@implementation DUIBuilder



// --------------------------------------------------------------------------
//
// UIButton
//
// --------------------------------------------------------------------------


/*
 Sample Code:
 UIButton *btn = [UIBuilder createSimpleUIButtonWithTitle:@"Open Mail" andFrame:CGRectMake(0.f, 0.f, 100.f, 50.f)];
 btn.center = self.viewData.center;
 [btn addTarget:self action:@selector(clickedBtn) forControlEvents:UIControlEventTouchUpInside];
*/

+(UIButton *) createSimpleUIButtonWithTitle:(NSString *) title andFrame:(CGRect)frame
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = frame;
    [btn setTitle:title forState:UIControlStateNormal];
    
    return btn;
}


+(UIButton *) createUIButtonWithDefaultImage:(NSString *) image
{
    UIImage *img = [UIImage imageNamed:image];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0.f, 0.f, img.size.width, img.size.height)];
    
    [btn setImage:img forState:UIControlStateNormal];
    
    return btn;
}


+(UIButton *) createUIButtonWithDefaultImage:(NSString *) image andWithSelectedImage:(NSString *) selectedImage
{
    UIImage *img = [UIImage imageNamed:image];
    UIImage *selectedImg = [UIImage imageNamed:selectedImage];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0.f, 0.f, img.size.width, img.size.height)];
    
    [btn setImage:img forState:UIControlStateNormal];
    [btn setImage:selectedImg forState:UIControlStateHighlighted];
    [btn setImage:selectedImg forState:UIControlStateSelected];
    
    
    return btn;
}


+(UIButton *) createUIButtonWithDefaultImage:(UIImage *) image withHighlightImage:(UIImage *) highlightImage
{

    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0.f, 0.f, image.size.width, image.size.height)];

    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highlightImage forState:UIControlStateHighlighted];


    return btn;
}

+(UIButton *) createUIButtonWithDefaultImage:(UIImage *) image withHighlightImage:(UIImage *) highlightImage andWithSelectedImage:(UIImage *) selectedImage
{

    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0.f, 0.f, image.size.width, image.size.height)];

    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highlightImage forState:UIControlStateHighlighted];
    [btn setImage:selectedImage forState:UIControlStateSelected];


    return btn;
}


+(UIButton *) createUIButtonWithFrame:(CGRect) inFrame withDefaultImage:(UIImage *) image andHighlightImage:(UIImage *) highlightImage
{

    UIButton *btn = [[UIButton alloc] initWithFrame:inFrame];

    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highlightImage forState:UIControlStateHighlighted];


    return btn;
}



+(UIControl *) createUIButtonWithDefaultImage:(NSString *) image andHitArea:(CGSize)inSize
{

    UIControl *btn = [[UIControl alloc] initWithFrame:CGRectMake(0, 0, inSize.width, inSize.height)];
//    btn.backgroundColor = [UIColor redColor]; // Debug
    UIImageView *img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:image]];
    [btn addSubview:img];


    img.center = btn.center;
    
    return btn;


}



// --------------------------------------------------------------------------
//
// UIImage
//
// --------------------------------------------------------------------------

+(UIImageView *) createUIImageWithUIImage:(UIImage *)aUIImage
{
    UIImageView *imgView = [[UIImageView alloc] initWithImage:aUIImage];
    imgView.opaque = YES;
    return imgView;

}


+(UIImageView *) createUIImageWithImageName:(NSString *)aImageName
{
    UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:aImageName]];
    
    // set "YES" as default to performance
    // Need to set 'NO' for transparent
    imgView.opaque = NO;
    return imgView;
}


+(UIImage *) imageFromURLString:(NSString *) aURLString
{
    // This call is synchronuse and blocking
    return [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:aURLString]]];
}


/* TODO - a more thorough implementation would return a placeholder image, cache the retrieved viewData locally,
 and update the main thread once the placeholder could be replaced with the downloaded asset
 
 Sample Code:
 UIImageView *imgView = [[UIImageView alloc] init];
 [self.viewData addSubview:imgView];
 
 // Load image from URL asynchronous
 [UIBuilder imageFromURLString:@"http://image.weather.com/images/maps/current/curwx_600x405.jpg" 
 asynchronousIntoUIImageView:imgView];
 
 */


+(void) imageFromURLString:(NSString *)aURLString asynchronousIntoUIImageView:(UIImageView *) aUIImageView
{
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [queue addOperationWithBlock:^{
        
        NSURL *url =[NSURL URLWithString:aURLString];
        NSData *imageData = [NSData dataWithContentsOfURL:url];
        
        
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            UIImage *img = [UIImage imageWithData:imageData];
            aUIImageView.frame = CGRectMake(0.f, 0.f, img.size.width, img.size.height);
            aUIImageView.image = img;
        }];
        
    }];
    
}






+(UILabel *) createUILabelWithText:(NSString *)inText andFrame:(CGRect)frame
{
    UILabel *myLabel = [[UILabel alloc] initWithFrame:frame];
	myLabel.text = inText;
    
    return myLabel;
}







///////////////////////////
/*
 Sample Code:
 [DUIBuilder setOriginOfView:btn2 ByTopLeft:CGPointMake(40.f, 20.f)];
 
 *
 */




+(void) setOriginOfView:(UIView *)aView ByTopLeft:(CGPoint) aPoint
{
    CGRect frame = aView.frame;
    frame.origin.x = aPoint.x;
    frame.origin.y = aPoint.y;
    aView.frame = frame;
    
    //    aView.center = CGPointMake( aPoint.x + aView.frame.size.width*0.5f, aPoint.y + aView.frame.size.height*0.5f);
}
//
//
//


@end

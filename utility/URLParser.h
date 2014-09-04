//
//  URLParser.h
//  Shutterfly
//
//  Created by dofl on 10/2/13.
//  Copyright (c) 2013 thedofl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface URLParser : NSObject {
@public
    NSArray *variables;
}

@property (nonatomic, retain) NSArray *variables;

- (id)initWithURLString:(NSString *)url;
- (NSString *)valueForVariable:(NSString *)varName;

@end
//
//  DCacheUtility.h
//  Rolex
//
//  Created by dofl on 2/6/13.
//  Copyright (c) 2013 firstborn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCacheUtility : NSObject
{

//    NSFileManager *fileManager;
}

//@property (retain, nonatomic) NSCache *cache;
@property (nonatomic, assign) BOOL checkForRetinaImages;

//-(void)setCache:(id)obj forKey:(NSString *)key;
-(id)getCacheImageForKey:(NSString *)key;
-(void)destroyCache;

@end

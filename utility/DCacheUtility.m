//
//  DCacheUtility.m
//  Rolex
//
//  Created by dofl on 2/6/13.
//  Copyright (c) 2013 firstborn. All rights reserved.
//

#import "DCacheUtility.h"

@interface DCacheUtility () {
	NSCache *_cache;
	NSFileManager *_fileManager;
}

@end

@implementation DCacheUtility

//@synthesize cache;


- (id)init {

	self = [super init];

	if (self) {

		_cache = [[NSCache alloc] init];
		// Set different
		[_cache setCountLimit:([[UIScreen mainScreen] scale] > 1) ? 25 : 25];

		_fileManager = [NSFileManager defaultManager];

	}

	return self;
}

- (void)setCache:(id)obj forKey:(NSString *)key {

	[_cache setObject:obj forKey:key];

}


- (id)getCacheImageForKey:(NSString *)key {

	UIImage *image = [_cache objectForKey:key];

	if (image == nil) {
//		NSLog(@"no cache");
		NSString *fullpath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:key];
		image = [self unCachedImageWithPath:fullpath];

#ifdef DEV
		NSAssert(image != nil, @"Image for key %@ should not be nil", key);
#endif
		if (image) [self setCache:image forKey:key];
	}


	return image;

}


- (UIImage *)unCachedImageWithPath:(NSString *)path {
	UIImage *img;

	if (!self.checkForRetinaImages) {
		img = [UIImage imageWithContentsOfFile:path];
	} else {
		NSString *retinaPath = [[path componentsSeparatedByString:@"."] componentsJoinedByString:@"@2x."];
		if ([[UIScreen mainScreen] scale] > 1 && [[path componentsSeparatedByString:@"@2x"] count] == 1 && [_fileManager fileExistsAtPath:retinaPath]) {
			img = [UIImage imageWithContentsOfFile:retinaPath];
		}
		else {
			img = [UIImage imageWithContentsOfFile:path];
		}
	}
	return img;
}


- (void)destroyCache {
//    NSLog(@"/////////  destoryed cache");
	[_cache removeAllObjects];
	_fileManager = nil;
}

@end

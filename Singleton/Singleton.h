//
//  Singleton.h
//  Singleton
//
//  Created by lisai  on 9/17/14.
//  Copyright (c) 2014 lisai . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property (nonatomic, retain) NSString *someProperty;

+ (id)sharedInstance;

@end

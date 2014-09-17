//
//  Singleton.m
//  Singleton
//
//  Created by lisai  on 9/17/14.
//  Copyright (c) 2014 lisai . All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

#pragma mark - Singleton Methods

+ (id)sharedInstance
{
    static dispatch_once_t onceToken = 0;
    __strong static id sharedInstance = nil;
    
    // The block given to dispatch_once only ever be called once.
    // It is fast and thread safe
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

/*
 * Non-GCD based code

+ (id)sharedInstance
{
    static id *sharedInstance = nil;
    @synchronized(self)
    {
        if (sharedInstance == nil)
        {
            sharedInstance = [[self alloc] init];
        }
    }
    return sharedInstance;
}
*/

- (id)init
{
    if (self = [super init]) {
        _someProperty = @"Default Property Value";
    
    }
    return self;
}

@end

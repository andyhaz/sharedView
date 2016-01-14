//
//  myDataClass.m
//  sharedViews
//
//  Created by andrew hazlett on 1/10/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//

#import "myDataClass.h"

@implementation myDataClass

@synthesize testString = _testString;
@synthesize testArray = _testArray;
@synthesize mySharedArray = _mySharedArray;

//@synthesize mySharedArray;

static myDataClass *_sharedInstance;

- (id) init {
    if (self = [super init]) {
        //custom init
    }
    return self;
}

+ (myDataClass *) sharedInstance{
    if (!_sharedInstance) {
        _sharedInstance = [[myDataClass alloc]init];
    }
    return _sharedInstance;
}
/*
+ (myDataClass*) sharedInstance {
    static myDataClass *myInstance = nil;
    if (myInstance == nil) {
        myInstance = [[[self class] alloc] init];
        myInstance.mySharedArray = [NSMutableArray arrayWithObject:@"Test"];
    }
    return myInstance;
}*/
@end
//
//  myDataClass.h
//  sharedViews
//
//  Created by andrew hazlett on 1/10/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface myDataClass : NSObject

@property (nonatomic,copy)NSString *testString;
@property (nonatomic,copy)NSMutableArray *testArray;

@property (nonatomic) NSMutableArray *mySharedArray;
+(myDataClass*) sharedInstance;

@end
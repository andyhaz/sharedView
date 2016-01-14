//
//  myView.m
//  sharedViews
//
//  Created by andrew hazlett on 1/10/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//
#import "myView.h"
#import "myDataClass.h"

@implementation myView

@synthesize ary;

- (id) init {
    if (self = [super init]) {
        //custom init
    }
    return self;
}


-(void)mouseDown:(NSEvent *)theEvent {
    if (!ary) {
        ary = [[NSMutableArray alloc]init];
    }
    if (!myLocation) {
        myLocation = [[NSMutableArray alloc]init];
    }
}

-(void)mouseMoved:(NSEvent *)theEvent {
    NSPoint mouseLoc = [NSEvent mouseLocation]; //get current mouse position

    NSNumber *locX = [NSNumber numberWithFloat:mouseLoc.x];
    NSNumber *locY = [NSNumber numberWithFloat:mouseLoc.y];
    
    //NSMutableArray *ary = [NSMutableArray arrayWithObjects:locX,locY, nil];
    [myLocation addObject:locX];
    [myLocation addObject:locY];
}

-(void)mouseUp:(NSEvent *)TheEvent {
    myDataClass *data = [myDataClass sharedInstance];
    
    NSPoint mouseLoc = [NSEvent mouseLocation]; //get current mouse position
    //NSLog(@"Mouse location: %f %f", mouseLoc.x, mouseLoc.y);
    
    NSNumber *locX = [NSNumber numberWithFloat:mouseLoc.x];
    NSNumber *locY = [NSNumber numberWithFloat:mouseLoc.y];
    
    //NSMutableArray *ary = [NSMutableArray arrayWithObjects:locX,locY, nil];
    [myLocation addObject:locX];
    [myLocation addObject:locY];
    
    [data setMySharedArray:myLocation];
    
  //  NSLog(@"myLoaction:%@",myLocation);
} // end mouseUp

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    // Drawing code here.
    NSLog(@"drawRect");
    //set background color
    [[NSColor colorWithSRGBRed:0.0 green:0.0 blue:0.0 alpha:0.0] setFill];
    NSRectFill( dirtyRect );
}
@end
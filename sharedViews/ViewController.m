//
//  ViewController.m
//  sharedViews
//
//  Created by andrew hazlett on 1/10/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//

#import "ViewController.h"
#import "myDataClass.h"
#import "myView.h"

@implementation ViewController

@synthesize myData;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    myData = [[NSMutableArray alloc]init];
    myDataClass *data = [myDataClass sharedInstance];
    [data setTestString:@"myData, Hello, World!"];
    //set view
   // NSLog(@"mydata:%@",[data testString]);
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    // Update the view, if already loaded.
}

- (IBAction)buttondown:(id)sender {
    myDataClass *data = [myDataClass sharedInstance];
    NSLog(@"buttondown data:%@",[data mySharedArray]);
}
@end

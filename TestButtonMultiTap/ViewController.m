//
//  ViewController.m
//  TestButtonMultiTap
//
//  Created by ys on 16/4/6.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(100, 100, 100, 100);
//    [button addTarget:self action:@selector(buttonActionDown) forControlEvents:UIControlEventTouchDown];
//    [button addTarget:self action:@selector(buttonActionDownRepeat) forControlEvents:UIControlEventTouchDownRepeat];
    [button addTarget:self action:@selector(buttonActionValueChanged) forControlEvents:UIControlEventValueChanged];
    [button addTarget:self action:@selector(buttonActionAllEvents) forControlEvents:UIControlEventAllEvents];
    [button addTarget:self action:@selector(buttonActionAllTouchEvents) forControlEvents:UIControlEventAllTouchEvents];
    [self.view addSubview:button];

}

- (void)buttonActionDown
{
    NSLog(@"buttonActionDown");
}
- (void)buttonActionDownRepeat
{
    NSLog(@"buttonActionDownRepeat");
}
- (void)buttonActionValueChanged
{
    NSLog(@"buttonActionValueChanged");
}
- (void)buttonActionAllEvents
{
    NSLog(@"buttonActionAllEvents");
}
- (void)buttonActionAllTouchEvents
{
    NSLog(@"buttonActionAllTouchEvents");
}

@end

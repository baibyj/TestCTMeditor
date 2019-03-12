//
//  ViewController.m
//  ModuleC
//
//  Created by byj on 2019/3/12.
//  Copyright © 2019 byj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setTitle:@"A" forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    button.backgroundColor = [UIColor blueColor];
    
    button.frame = CGRectMake(0, 0, 100, 50);
    
    button.center = self.view.center;
    
    [self.view addSubview:button];
}

- (void)buttonClick{
    Class class = NSClassFromString(@"Target_A");
    
    id target = [[class alloc] init];
    
    UIViewController *controller = [target performSelector:@selector(Action_pushController:) withObject:nil];
    
    [self.navigationController pushViewController:controller animated:YES];
    
    return;
}
@end

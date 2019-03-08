//
//  AViewController.m
//  TestCTMeditor
//
//  Created by byj on 2019/3/7.
//  Copyright © 2019 byj. All rights reserved.
//

#import "AViewController.h"
#import "CTMediator.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"A--Controller";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setTitle:@"B" forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    button.backgroundColor = [UIColor blueColor];
    
    button.frame = CGRectMake(0, 0, 100, 50);
    
    button.center = self.view.center;
    
    [self.view addSubview:button];
}

- (void)buttonClick{
    
    UIViewController *controller = [[CTMediator sharedInstance] performTarget:@"B" action:@"pushController" params:nil shouldCacheTarget:NO];
    
    [self.navigationController pushViewController:controller animated:YES];
    
    return;
}

@end

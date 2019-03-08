//
//  BViewController.m
//  TestCTMeditor
//
//  Created by byj on 2019/3/7.
//  Copyright © 2019 byj. All rights reserved.
//

#import "BViewController.h"
#import "CTMediator.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"B--Controller";
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setTitle:@"A" forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    button.backgroundColor = [UIColor blueColor];
    
    button.frame = CGRectMake(0, 0, 100, 50);
    
    button.center = self.view.center;
    
    [self.view addSubview:button];
}
    
- (void)buttonClick{
    
    UIViewController *controller = [[CTMediator sharedInstance] performTarget:@"A" action:@"pushController" params:nil shouldCacheTarget:NO];
    
    [self.navigationController pushViewController:controller animated:YES];
    
    return;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

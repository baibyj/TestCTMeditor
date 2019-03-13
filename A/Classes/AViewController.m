//
//  AViewController.m
//  TestCTMeditor
//
//  Created by byj on 2019/3/7.
//  Copyright © 2019 byj. All rights reserved.
//

#import "AViewController.h"

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
    Class mediatorClass = NSClassFromString(@"CTMediator");
    
    id mediator = [[mediatorClass alloc] init];
    
    NSMethodSignature *shareInstanceSignature = [mediatorClass instanceMethodSignatureForSelector:@selector(performTarget:action:params:shouldCacheTarget:)];
    
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:shareInstanceSignature];
    
    [invocation setTarget:mediator];
    
    [invocation setSelector:@selector(performTarget:action:params:shouldCacheTarget:)];
    
    NSString *module = @"B";
    
    [invocation setArgument:&module atIndex:2];
    
    NSString *action = @"pushController";
    
    [invocation setArgument:&action atIndex:3];
    
    NSDictionary *dict = [NSDictionary dictionary];
    
    [invocation setArgument:&dict atIndex:4];
    
    NSNumber *number = @(NO);
    
    [invocation setArgument:&number atIndex:5];
    
    [invocation invoke];
    
    void *tempController;

    [invocation getReturnValue:&tempController];
    
    [self.navigationController pushViewController:(__bridge UIViewController *)tempController animated:YES];
    
//    UIViewController *controller = [[CTMediator sharedInstance] performTarget:@"B" action:@"pushController" params:nil shouldCacheTarget:NO];
//
//    [self.navigationController pushViewController:controller animated:YES];
    
    return;
}

@end

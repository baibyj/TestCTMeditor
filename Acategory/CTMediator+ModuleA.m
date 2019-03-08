//
//  CTMediator+ModuleA.m
//  CTMediator
//
//  Created by byj on 2019/3/8.
//

#import "CTMediator+ModuleA.h"

@implementation CTMediator (ModuleA)

- (UIViewController *)moduleAController{
    
    UIViewController *controller = [self performTarget:@"A" action:@"pushController" params:nil shouldCacheTarget:NO];

    return controller;
}
    
@end

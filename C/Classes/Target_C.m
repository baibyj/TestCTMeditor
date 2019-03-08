//
//  ModuleC.m
//  TestCTMeditor
//
//  Created by byj on 2019/3/7.
//  Copyright © 2019 byj. All rights reserved.
//

#import "Target_C.h"
#import "CViewController.h"

@implementation Target_C
- (UIViewController *)Action_pushController:(id)obj{
    return [[CViewController alloc] init];
}
@end

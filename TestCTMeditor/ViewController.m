//
//  ViewController.m
//  TestCTMeditor
//
//  Created by byj on 2019/3/7.
//  Copyright © 2019 byj. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
#import "BViewController.h"
#import "CViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellname"];
    
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellname"];
    }
    
    if (0 == indexPath.section) {
        cell.textLabel.text = @"Module--A";
    }
    else if (1 == indexPath.section){
        cell.textLabel.text = @"Module--B";
    }
    else if (2 == indexPath.section){
        cell.textLabel.text = @"Module--C";
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        AViewController *controller = [[AViewController alloc] init];
        
        [self.navigationController pushViewController:controller animated:YES];
        
        return;
    }
    
    if (1 == indexPath.section) {
        BViewController *controller = [[BViewController alloc] init];
        
        [self.navigationController pushViewController:controller animated:YES];
        
        return;
    }
    
    if (2 == indexPath.section) {
        CViewController *controller = [[CViewController alloc] init];
        
        [self.navigationController pushViewController:controller animated:YES];
        
        return;
    }
}
@end

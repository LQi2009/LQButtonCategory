//
//  ViewController.m
//  LZButtonCategory
//
//  Created by Artron_LQQ on 16/5/5.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+LZCategory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button0 = [UIButton buttonWithType:UIButtonTypeCustom];
    button0.backgroundColor = [UIColor redColor];
    button0.frame = CGRectMake(140, 190, 100, 30);
    [button0 setTitle:@"系统默认" forState:UIControlStateNormal];
    [button0 setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:button0];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor = [UIColor redColor];
    button1.frame = CGRectMake(40, 90, 100, 30);
    [button1 setTitle:@"标题在左" forState:UIControlStateNormal];
    [button1 setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:button1];
    [button1 setbuttonType:LZCategoryTypeLeft];

    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(40, 280, 80, 90);
    [button setTitle:@"标题在下" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"AppIcon60x60"] forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button setbuttonType:LZCategoryTypeBottom];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

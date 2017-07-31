//
//  ViewController.m
//  SSHudHelperExample
//
//  Created by Vimin on 2017/7/31.
//  Copyright © 2017年 广州方鼎软件科技发展有限公司. All rights reserved.
//

#import "ViewController.h"
#import "SSHudHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [[SSHudHelper defaultHelper] showIndeterminateWithMessage:@"正在查询中!"];
}


@end

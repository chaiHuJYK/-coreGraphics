//
//  RootViewController.m
//  CoreCorDemo
//
//  Created by 柴胡 on 17/1/18.
//  Copyright © 2017年 jyk. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
}

//以指定中心点绘制圆弧
- (void)drawCircle {
    // 获取当前图形，视图推入堆栈的图形，相当于你所要绘制图形的图纸
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 创建一个新的空图形路径。
    CGContextSetFillColorWithColor(ctx, [UIColor purpleColor].CGColor);
    CGFloat x = [UIScreen mainScreen].bounds.size.width / 2;
    CGFloat y = [UIScreen mainScreen].bounds.size.height / 2;
    CGContextAddArc(ctx, x, y, 5, 0, 2 * M_PI, 1);
    //绘制当前路径区域
    CGContextFillPath(ctx);
}


@end

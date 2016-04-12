//
//  ViewController.m
//  CATransitionToolDemo
//
//  Created by Mr.Right on 16/4/12.
//  Copyright © 2016年 lizheng. All rights reserved.
//

#define IMAGE1 @"01.jpg"
#define IMAGE2 @"02.jpg"


#import "ViewController.h"
#import "CATransitionTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *redView = [[UIView alloc]initWithFrame:self.view.bounds];
    [self addBgImageWithImageName:IMAGE1 forView:redView];
    [self.view insertSubview:redView atIndex:0];
    
    UIView *yellowView = [[UIView alloc]initWithFrame:self.view.bounds];
    [self addBgImageWithImageName:IMAGE2 forView:yellowView];
    [self.view insertSubview:yellowView atIndex:1];
}

#pragma 给View添加背景图
-(void)addBgImageWithImageName:(NSString *) imageName forView:(UIView *)view
{
    view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:imageName]];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    CATransitionTool *tool = [[CATransitionTool alloc]init];

    [tool animationWithAnimationType:RippleEffect subType:kCATransitionFromBottom during:0.5f forView:self.view];
}

@end

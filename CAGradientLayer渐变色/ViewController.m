//
//  ViewController.m
//  CAGradientLayer渐变色
//
//  Created by 刘浩浩 on 16/5/17.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //create gradient layer and add it to our container view
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.view.bounds;
    [self.view.layer addSublayer:gradientLayer];
    //set gradient colors
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id)[UIColor yellowColor].CGColor];
//    //彩虹色
//    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id)[UIColor orangeColor].CGColor, (__bridge id)[UIColor yellowColor].CGColor, (__bridge id)[UIColor greenColor].CGColor, (__bridge id)[UIColor cyanColor].CGColor, (__bridge id)[UIColor blueColor].CGColor, (__bridge id)[UIColor purpleColor].CGColor];
//    gradientLayer.locations = @[@0.0,@0.25, @0.5];
    //set gradient start and end points
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

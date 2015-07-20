


//
//  RootViewController.m
//  transformBlocks
//
//  Created by Guan on 15/7/19.
//  Copyright (c) 2015年 Guan. All rights reserved.
//
#import "RootViewController.h"

@interface RootViewController ()

{
    
    UIView *_top ;
    UIView *_blue ;
    UIView *_green ;
    UIView *_left;
    UIView *_right;
}

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
// Do any additional setup after loading the view.
    
//    self.view .backgroundColor  = [UIColor grayColor];
    
    CGFloat Weidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat Hieght = [UIScreen mainScreen].bounds.size.height;
    CGFloat w = Weidth * 0.5 ;
    CGFloat h = Hieght - 20;
    
    UIView *top = [[UIView alloc]initWithFrame:CGRectMake(0, 0, Weidth, 20)];
    top.backgroundColor = [UIColor redColor];
    top.autoresizingMask  =  UIViewAutoresizingFlexibleWidth ;
    [self.view addSubview:top];
    
    
    _left = [[UIView alloc]initWithFrame:CGRectMake(0 , 40, w, h)];
//    _left.backgroundColor = [UIColor orangeColor];
    _right = [[UIView alloc]initWithFrame:CGRectMake(w, 40, w, h)];
//    _right.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:_right];
    [self.view addSubview:_left];
    
    _left.autoresizingMask  = UIViewAutoresizingFlexibleWidth |  UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleRightMargin;
    
    _right.autoresizingMask  = UIViewAutoresizingFlexibleWidth |  UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin;
    
    
    _blue = [[UIView alloc]initWithFrame:CGRectMake(20, 0, _left.frame.size.width - 30 ,_left.frame.size.height - 40)];
    _blue.backgroundColor = [UIColor blueColor];
    _blue.autoresizingMask =  UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight  ;
    [_left addSubview: _blue];
    
    
    _green = [[UIView alloc]initWithFrame:CGRectMake(10, 0, _right.frame.size.width - 30 , _right.frame.size.height - 40)];
    _green.backgroundColor = [UIColor greenColor];
    _green.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [_right addSubview: _green];
    
//    UIViewAutoresizingNone就是不自动调整。
//    UIViewAutoresizingFlexibleLeftMargin 自动调整与superView左边的距离，保证与superView右边的距离不变。
//    UIViewAutoresizingFlexibleRightMargin 自动调整与superView的右边距离，保证与superView左边的距离不变。
//    UIViewAutoresizingFlexibleTopMargin 自动调整与superView顶部的距离，保证与superView底部的距离不变。
//    UIViewAutoresizingFlexibleBottomMargin 自动调整与superView底部的距离，也就是说，与superView顶部的距离不变。
//    UIViewAutoresizingFlexibleWidth 自动调整自己的宽度，保证与superView左边和右边的距离不变。
//    UIViewAutoresizingFlexibleHeight 自动调整自己的高度，保证与superView顶部和底部的距离不变。
//    UIViewAutoresizingFlexibleLeftMargin  |UIViewAutoresizingFlexibleRightMargin 自动调整与superView左边的距离，保证与左边的距离和右边的距离和原来距左边和右边的距离的比例不变。比如原来距离为20，30，调整后的距离应为68，102，即68/20=102/30。
//    
//    其它的组合类似。
    

    

    
}


-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    
//    CGFloat Weidth = [UIScreen mainScreen].bounds.size.width;
//    CGFloat Hieght = [UIScreen mainScreen].bounds.size.height;
//    CGFloat w = Weidth * 0.5 - 30;
//    CGFloat h = Hieght - 60  ;
    NSLog(@"我转完了------------------");
    NSLog(@"屏幕-----------%@", NSStringFromCGRect([UIScreen mainScreen].bounds));
//    _blue = [[UIView alloc]initWithFrame:CGRectMake(20, 40, w + 10 ,h - 20 )];
//    _green = [[UIView alloc]initWithFrame:CGRectMake(Weidth - w - 20 - 10, 40, w ,h-20 )];
//    
    NSLog(@"lan-----------%@", NSStringFromCGRect(_blue.frame));
    NSLog(@"lv-----------%@", NSStringFromCGRect(_green.frame));
    
}

@end

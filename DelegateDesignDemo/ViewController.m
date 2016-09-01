//
//  ViewController.m
//  DelegateDesignDemo
//
//  Created by Jentle on 16/9/1.
//  Copyright © 2016年 Jentle. All rights reserved.
//

#import "ViewController.h"
#import "JTLoadMoreView.h"

@interface ViewController ()<JTLoadMoreViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    JTLoadMoreView *loadMoreView = [JTLoadMoreView loadMoreView];
    loadMoreView.delegate = self;
    loadMoreView.center = self.view.center;
    [self.view addSubview:loadMoreView];
}

#pragma mark - <JTLoadMoreViewDelegate>
- (void)loadMoreViewDidClickLoadMoreButton:(JTLoadMoreView *)loadMoreView{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        loadMoreView.indicator.hidden = YES;
        [loadMoreView.loadMoreButton setTitle:@"已加载更多" forState:UIControlStateNormal];
        self.view.backgroundColor = [UIColor greenColor];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [loadMoreView.loadMoreButton setTitle:@"加载更多" forState:UIControlStateNormal];
        });
    });
    
    
}

@end

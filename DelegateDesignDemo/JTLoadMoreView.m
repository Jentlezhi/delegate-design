//
//  JTLoadMoreView.m
//  代理设计模式规范示例
//
//  Created by Jentle on 16/6/19.
//  Copyright © 2016年 Jentle. All rights reserved.
//

#import "JTLoadMoreView.h"


@implementation JTLoadMoreView

+ (instancetype)loadMoreView{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

- (instancetype)init{
    if (self = [super init]) {
        self = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([JTLoadMoreView class]) owner:nil options:nil] lastObject];
    }
    return self;
}


- (IBAction)loadMore:(UIButton *)sender {
    self.indicator.hidden = NO;
    if ([self.delegate respondsToSelector:@selector(loadMoreViewDidClickLoadMoreButton:)]) {
        [self.delegate loadMoreViewDidClickLoadMoreButton:self];
    }
}


@end

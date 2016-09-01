//
//  JTLoadMoreView.h
//  代理设计模式规范示例
//
//  Created by Jentle on 16/6/19.
//  Copyright © 2016年 Jentle. All rights reserved.
//

#import <UIKit/UIKit.h>


@class JTLoadMoreView;

@protocol JTLoadMoreViewDelegate <NSObject>

@optional
/**
 模仿苹果的代理方法
 - (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;
 */
- (void)loadMoreViewDidClickLoadMoreButton:(JTLoadMoreView *)loadMoreView;

@end

@interface JTLoadMoreView : UIView
@property (weak, nonatomic) IBOutlet UIButton *loadMoreButton;

/** 代理 */
@property(weak, nonatomic) id<JTLoadMoreViewDelegate>delegate;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;


+ (instancetype)loadMoreView;

@end

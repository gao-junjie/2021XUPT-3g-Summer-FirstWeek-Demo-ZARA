//
//  VCOne.h
//  1.界面小demo
//
//  Created by mac on 2021/6/11.
//  Copyright © 2021 mac. All rights reserved.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface VCOne : ViewController  <UIScrollViewDelegate> {
    UIScrollView* _scrollView;
    UIPageControl* _pageControl;
}
@property (retain, nonatomic) UIScrollView* scrollView;
@property (retain, nonatomic) UIPageControl* pageControl;
@end

NS_ASSUME_NONNULL_END

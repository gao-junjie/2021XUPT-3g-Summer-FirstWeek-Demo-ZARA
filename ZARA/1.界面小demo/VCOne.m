//
//  VCOne.m
//  1.界面小demo
//
//  Created by mac on 2021/6/11.
//  Copyright © 2021 mac. All rights reserved.
//

#import "VCOne.h"

@interface VCOne ()

@end

@implementation VCOne
@synthesize scrollView = _scrollView;
@synthesize pageControl = _pageControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    //“主页”界面
    //创建滚动视图对象
    _scrollView = [UIScrollView new];
    _scrollView.frame = CGRectMake(17, 240, 380, 520);
    
    //弹动效果
    _scrollView.bounces = YES;
    //设置画布大小，横向效果
    _scrollView.contentSize = CGSizeMake(380 * 5, 520);
    //是否按照整页来滚动视图
    _scrollView.pagingEnabled = YES;
    //是否可以边缘弹动效果
    _scrollView.bounces = YES;
    //开启横向弹动效果
    _scrollView.alwaysBounceHorizontal = YES;
    //开启纵向弹动效果
    _scrollView.alwaysBounceVertical = NO;
    //是否显示横向滚动条
    _scrollView.showsHorizontalScrollIndicator = NO;
    //显示背景颜色
    _scrollView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_scrollView];
    
    //创建pageControl
    _pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(107, 670, 200, 100)];
    _pageControl.numberOfPages = 4;
    _pageControl.currentPage = 0;
    _pageControl.currentPageIndicatorTintColor = [UIColor blackColor];
    _pageControl.pageIndicatorTintColor = [UIColor grayColor];
    [self.view addSubview:_pageControl];
    
    for (int i = 0; i <= 4; i++) {
        //生成图片名称
        NSString* strName = [NSString stringWithFormat:@"mainPic%d.jpg", i + 1];
        UIImage* image = [UIImage imageNamed:strName];
        //创建图像视图对象
        UIImageView* iView = [UIImageView new];
        //图像赋值
        iView.image = image;
        //设置图像视图在滚动视图画布中的位置
        iView.frame = CGRectMake(380 * i, 0, 380, 520);
        
        [_scrollView addSubview:iView];
    }
    //设置logo
        UIImage* backGround1Image = [UIImage imageNamed:@"background1.PNG"];
        //创建图像视图对象
        UIImageView* backGround1View = [UIImageView new];
        //图像赋值
        backGround1View.image = backGround1Image;
        backGround1View.backgroundColor = [UIColor blackColor];
        //设置图像视图在滚动视图画布中的位置
        backGround1View.frame = CGRectMake(0, 45, 300, 140);
        //添加该logo到vcOne中
        [self.view addSubview:backGround1View];
        //如上
        UIImage* backGround2Image = [UIImage imageNamed:@"background2.PNG"];
        //创建图像视图对象
        UIImageView* backGround2View = [UIImageView new];
        //图像赋值
        backGround2View.image = backGround2Image;
        backGround2View.backgroundColor = [UIColor blackColor];
        //设置图像视图在滚动视图画布中的位置
        backGround2View.frame = CGRectMake(176, 191, 200, 40);
        //添加该logo到vcOne中
        [self.view addSubview:backGround2View];
    //添加scrollview代理对象
    _scrollView.delegate = self;
    
    //自动滚动
    //创建一个“计时器”控件NSTimer
    //通过scheduledTimerWithInterval这个方法创建的计时器控件，创建好以后自动启动
    [NSTimer scheduledTimerWithTimeInterval:2.5 target:self selector:@selector(scrollImage) userInfo:nil repeats:YES];
}

//实现UIScrollView的滚动方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView.contentOffset.x == scrollView.frame.size.width * 4){
    //当滚动到最后一张时。滚到第二张
    scrollView.contentOffset = CGPointMake(0, 0);
    }
    //1.获取滚动的x方向的偏移值
    CGFloat offsetX = scrollView.contentOffset.x;
    //移到一半就变化
    offsetX = offsetX + scrollView.frame.size.width * 0.5;
    //2.用x方向的偏移值除以一张图片的宽度，取商就是当前滚动到第几页（索引）
    int page = offsetX / scrollView.frame.size.width;
    
    //3.将页码设置给UIPageControll
    _pageControl.currentPage = page;
}

//自动滚动图片的方法
//因为在创建计时器的时候，制定了时间间隔为2.0秒，所以下面这个方法每个一秒钟执行一次
- (void)scrollImage {
    //每次执行这个方法的时候，都要让图片滚动到下一页
    //如何让UIScrollView滚动到下一页
    //1.获取当前的UIPagecontrol的页码
    NSInteger page = _pageControl.currentPage;
    //2.如果到了最后一页，那么设置页码为0.如果没有到达最后一页，则让页码+1
    if (page == _pageControl.numberOfPages - 1) {
        //表示已经到达最后一页了
        //回到第一页
        page = 0;
    } else {
        page++;
    }
    //3.用每一页的宽度 * （页码+1） == 计算出了下一页的contentoffset的值
    CGFloat offsetX = page * _scrollView.frame.size.width;
    //4.设置UIScrollView的contentoffset等于新的偏移值
    [_scrollView setContentOffset:CGPointMake(offsetX, 0) animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

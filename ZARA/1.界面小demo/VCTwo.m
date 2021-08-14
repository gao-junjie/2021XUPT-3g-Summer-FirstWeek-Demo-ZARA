//
//  VCTwo.m
//  1.界面小demo
//
//  Created by mac on 2021/6/11.
//  Copyright © 2021 mac. All rights reserved.
//

#import "VCTwo.h"

@interface VCTwo ()

@end

@implementation VCTwo
@synthesize textField = _textField;
@synthesize button = _button;
@synthesize scrollView2 = _scrollView2;

- (void)viewDidLoad {
    [super viewDidLoad];
    //”购买“界面
    _scrollView2 = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 110, 418, 900)];
    _scrollView2.contentSize = CGSizeMake(418, 900 * 2);
    _scrollView2.backgroundColor = [UIColor whiteColor];
    _scrollView2.bounces = NO;
    _scrollView2.showsVerticalScrollIndicator = NO;
    [self.view addSubview:_scrollView2];
    
    //创建输入文本框
    _textField = [UITextField new];
    _textField.frame = CGRectMake(30, 50, 305, 40);
    _textField.font = [UIFont systemFontOfSize:18];
    _textField.placeholder = @"请输入你感兴趣的商品";
    _textField.textColor = [UIColor blackColor];
    _textField.keyboardType = UIKeyboardTypeURL;
    //设置边框风格
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    _textField.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    [self.view addSubview:_textField];
    _textField.delegate = self;
    
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _button.frame = CGRectMake(350, 53, 40, 30);
    //vcTwo.button.backgroundColor = [UIColor grayColor];
    _button.tintColor = [UIColor blackColor];
    [_button setTitle:@"搜 索" forState:UIControlStateNormal];
    _button.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:_button];
    //设置logo
    UIImage* backGround3Image = [UIImage imageNamed:@"background1.PNG"];
    //创建图像视图对象
    UIImageView* backGround3View = [UIImageView new];
    //图像赋值
    backGround3View.image = backGround3Image;
    backGround3View.backgroundColor = [UIColor blackColor];
    //设置图像视图在滚动视图画布中的位置
    backGround3View.frame = CGRectMake(0, 0, 418, 110);
    //添加该logo到vcOne中
    [self.scrollView2 addSubview:backGround3View];
    
    //设置logoBtn
    UIImage* demo1Image = [UIImage imageNamed:@"demo2.png"];
    UIButton* demo1Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    demo1Btn.frame = CGRectMake(0, 130, 130, 115);
    [demo1Btn setImage:demo1Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:demo1Btn];
    
    UIImage* demo2Image = [UIImage imageNamed:@"demo1.png"];
    UIButton* demo2Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    demo2Btn.frame = CGRectMake(147, 124, 110, 135);
    [demo2Btn setImage:demo2Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:demo2Btn];
    
    UIImage* demo3Image = [UIImage imageNamed:@"demo3.png"];
    UIButton* demo3Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    demo3Btn.frame = CGRectMake(281, 162, 115, 95);
    [demo3Btn setImage:demo3Image forState:UIControlStateNormal];
    [_scrollView2 addSubview:demo3Btn];
    
    UIImage* demo4Image = [UIImage imageNamed:@"demo4.png"];
    UIButton* demo4Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    demo4Btn.frame = CGRectMake(35, 266, 64, 119);
    [demo4Btn setImage:demo4Image forState:UIControlStateNormal];
    [_scrollView2 addSubview:demo4Btn];
    
    UIImage* demo5Image = [UIImage imageNamed:@"demo5.png"];
    UIButton* demo5Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    demo5Btn.frame = CGRectMake(153, 262, 90, 118);
    [demo5Btn setImage:demo5Image forState:UIControlStateNormal];
    [_scrollView2 addSubview:demo5Btn];
    
    UIImage* demo6Image = [UIImage imageNamed:@"demo6.png"];
    UIButton* demo6Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    demo6Btn.frame = CGRectMake(300, 257, 90, 126);
    [demo6Btn setImage:demo6Image forState:UIControlStateNormal];
    [_scrollView2 addSubview:demo6Btn];
    
    UIImage* backGround4Image = [UIImage imageNamed:@"background3.jpg"];
    //创建图像视图对象
    UIImageView* backGround4View = [UIImageView new];
    //图像赋值
    backGround4View.image = backGround4Image;
    backGround4View.backgroundColor = [UIColor blackColor];
    //设置图像视图在滚动视图画布中的位置
    backGround4View.frame = CGRectMake(0, 400, 418, 60);
    //添加该logo到vcOne中
    [_scrollView2 addSubview:backGround4View];
    
    UILabel* vcTwoLabel = [UILabel new];
    vcTwoLabel.frame = CGRectMake(0, 460, 418, 1400);
    vcTwoLabel.backgroundColor = [UIColor lightGrayColor];
    [self.scrollView2 addSubview:vcTwoLabel];
    
    UIImage* clothes1Image = [UIImage imageNamed:@"clothes1.jpg"];
    UIButton* clothes1Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    clothes1Btn.frame = CGRectMake(0, 460, 205, 235);
    [clothes1Btn setImage:clothes1Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:clothes1Btn];
    
    UIImage* clothes2Image = [UIImage imageNamed:@"clothes2.jpg"];
    UIButton* clothes2Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    clothes2Btn.frame = CGRectMake(210, 460, 204, 235);
    [clothes2Btn setImage:clothes2Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:clothes2Btn];
    
    UIImage* clothes3Image = [UIImage imageNamed:@"clothes3.jpg"];
    UIButton* clothes3Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    clothes3Btn.frame = CGRectMake(0, 700, 205, 235);
    [clothes3Btn setImage:clothes3Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:clothes3Btn];
    
    UIImage* clothes4Image = [UIImage imageNamed:@"clothes4.jpg"];
    UIButton* clothes4Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    clothes4Btn.frame = CGRectMake(210, 700, 204, 235);
    [clothes4Btn setImage:clothes4Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:clothes4Btn];
    
    UIImage* clothes5Image = [UIImage imageNamed:@"clothes5.jpg"];
    UIButton* clothes5Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    clothes5Btn.frame = CGRectMake(0, 940, 205, 235);
    [clothes5Btn setImage:clothes5Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:clothes5Btn];
    
    UIImage* clothes6Image = [UIImage imageNamed:@"clothes6.jpg"];
    UIButton* clothes6Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    clothes6Btn.frame = CGRectMake(210, 940, 204, 235);
    [clothes6Btn setImage:clothes6Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:clothes6Btn];
    
    UIImage* clothes7Image = [UIImage imageNamed:@"clothes7.jpg"];
    UIButton* clothes7Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    clothes7Btn.frame = CGRectMake(0, 1180, 205, 235);
    [clothes7Btn setImage:clothes7Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:clothes7Btn];
    
    UIImage* clothes8Image = [UIImage imageNamed:@"clothes8.jpg"];
    UIButton* clothes8Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    clothes8Btn.frame = CGRectMake(210, 1180, 204, 235);
    [clothes8Btn setImage:clothes8Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:clothes8Btn];
    
    UIImage* clothes9Image = [UIImage imageNamed:@"clothes9.jpg"];
    UIButton* clothes9Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    clothes9Btn.frame = CGRectMake(0, 1420, 205, 235);
    [clothes9Btn setImage:clothes9Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:clothes9Btn];
    
    UIImage* clothes10Image = [UIImage imageNamed:@"clothes10.jpg"];
    UIButton* clothes10Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    clothes10Btn.frame = CGRectMake(210, 1420, 204, 235);
    [clothes10Btn setImage:clothes10Image forState:UIControlStateNormal];
    [self.scrollView2 addSubview:clothes10Btn];
    
    UILabel* vcTwoBotton = [[UILabel alloc] initWithFrame:CGRectMake(165, 1665, 200, 15)];
    vcTwoBotton.text = @"已经滑到底了哦 ～";
    vcTwoBotton.textColor = [UIColor darkGrayColor];
    vcTwoBotton.font = [UIFont systemFontOfSize:11];
    [self.scrollView2 addSubview:vcTwoBotton];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

//点击return收起键盘
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.textField resignFirstResponder];
    return YES;
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

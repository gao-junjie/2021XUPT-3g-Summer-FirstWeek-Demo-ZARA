//
//  VCThree.m
//  1.界面小demo
//
//  Created by mac on 2021/6/11.
//  Copyright © 2021 mac. All rights reserved.
//

#import "VCThree.h"
#import "VCThree1.h"

@interface VCThree ()

@end

@implementation VCThree
@synthesize tableView = _tableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //“我的”页面
    //登陆注册
    
    //创建UITableView
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _arrayData = @[@[@"ZARA"], @[@"订单", @"收藏", @"地址"], @[@"设置"]];
}

//获取组(分区)数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}
//设置每个分区的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 1) {
        return 3;
    } else {
        return 1;
    }
}

//设置行的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //获取分区
    if (indexPath.section == 0) {
        return 130;
    } else {
        return 60;
    }
}

//对tableView中的行进行设置
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    cell.textLabel.font = [UIFont systemFontOfSize:19];
    if (indexPath.section  == 0) {
//        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
//        imageView.image = [UIImage imageNamed:@"pic15.jpg"];
        //[cell.contentView addSubview:imageView];
        [[cell imageView] setImage:[UIImage imageNamed:@"pic15.jpg"]];
        cell.textLabel.font = [UIFont systemFontOfSize:28];
        cell.detailTextLabel.text = @"微信号：GJJJJJJXXXX";
        cell.detailTextLabel.textColor = [UIColor grayColor];
    }
    cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
    if (indexPath.section  == 1) {
        NSString* strName = [NSString stringWithFormat:@"icon%ld.png",indexPath.row + 4];
        UIImage* image = [UIImage imageNamed:strName];
        [[cell imageView] setImage:image];
    }
    if (indexPath.section  == 2) {
        [[cell imageView] setImage:[UIImage imageNamed:@"icon7.png"]];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    VCThree1 *detailView = [[VCThree1 alloc]init];
    [self.navigationController pushViewController:detailView animated:NO];
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

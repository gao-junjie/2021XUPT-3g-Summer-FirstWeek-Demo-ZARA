//
//  VCThree.h
//  1.界面小demo
//
//  Created by mac on 2021/6/11.
//  Copyright © 2021 mac. All rights reserved.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface VCThree : ViewController <UITableViewDelegate,
UITableViewDataSource> {
    //定义数据视图对象
    UITableView* _tableView;
    //声明一个数据源
    NSArray* _arrayData;
}
@property (retain, nonatomic) UITableView* tableView;
@end

NS_ASSUME_NONNULL_END

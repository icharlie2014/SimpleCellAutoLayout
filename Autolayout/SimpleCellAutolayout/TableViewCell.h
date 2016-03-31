//
//  TableViewCell.h
//  SimpleCellAutolayout
//
//  Created by panglong on 16/3/31.
//  Copyright © 2016年 庞龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@property (nonatomic,copy) NSString *titleData;
@property (nonatomic,copy) NSString *contentData;

@end

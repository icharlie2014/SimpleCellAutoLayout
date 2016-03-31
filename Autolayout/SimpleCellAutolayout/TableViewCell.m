//
//  TableViewCell.m
//  SimpleCellAutolayout
//
//  Created by panglong on 16/3/31.
//  Copyright © 2016年 庞龙. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *contentTextView;


@end

@implementation TableViewCell

- (void)setTitleData:(NSString *)titleData
{
    _titleData = titleData;
    
    self.titleLabel.text = titleData;
}

- (void)setContentData:(NSString *)contentData
{
    _contentData = contentData;
    
    self.contentTextView.text = contentData;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *identifier = @"cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell =  [[[NSBundle mainBundle] loadNibNamed:identifier owner:nil options:nil] firstObject];
    }
    return cell;
}

@end

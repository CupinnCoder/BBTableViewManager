//
//  BBTableViewCell.h
//  BBTableView
//
//  Created by Gary on 4/22/16.
//  Copyright © 2016 Gary. All rights reserved.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

@class BBTableViewManager,BBTableViewItem;

@interface BBTableViewCell : ASCellNode

@property (nonatomic, weak) BBTableViewManager *tableViewManager;
@property (nonatomic, assign) NSInteger rowIndex;
@property (nonatomic, assign) NSInteger sectionIndex;
@property (nonatomic, strong) BBTableViewItem *tableViewItem;


- (instancetype)initWithTableViewItem:(BBTableViewItem *)tableViewItem;
- (void)initCell;

@end

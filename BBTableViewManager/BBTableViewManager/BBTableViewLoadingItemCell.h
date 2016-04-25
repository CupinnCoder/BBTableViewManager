//
//  BBTableViewLoadingItemCell.h
//  BBTableView
//
//  Created by Gary on 4/22/16.
//  Copyright © 2016 Gary. All rights reserved.
//

#import "BBTableViewCell.h"
#import "BBTableViewLoadingItem.h"

@interface BBTableViewLoadingItemCell : BBTableViewCell

@property (strong, readwrite, nonatomic) BBTableViewLoadingItem *tableViewItem;

@end

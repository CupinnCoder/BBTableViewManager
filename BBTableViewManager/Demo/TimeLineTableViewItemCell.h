//
//  TimeLineTableViewItemCell.h
//  MYTableViewManager
//
//  Created by Melvin on 12/16/15.
//  Copyright © 2015 Melvin. All rights reserved.
//

#import "BBTableViewCell.h"
#import "TimeLineTableViewItem.h"

@interface TimeLineTableViewItemCell : BBTableViewCell

@property (strong, readwrite, nonatomic) TimeLineTableViewItem *tableViewItem;

@end

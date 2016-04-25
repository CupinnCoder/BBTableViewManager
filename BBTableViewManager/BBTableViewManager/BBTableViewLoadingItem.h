//
//  BBTableViewLoadingItem.h
//  BBTableView
//
//  Created by Gary on 4/22/16.
//  Copyright © 2016 Gary. All rights reserved.
//

#import "BBTableViewItem.h"

@interface BBTableViewLoadingItem : BBTableViewItem

@property (nonatomic ,copy) NSString *title;

+ (BBTableViewLoadingItem*)itemWithTitle:(NSString *)title;

@end

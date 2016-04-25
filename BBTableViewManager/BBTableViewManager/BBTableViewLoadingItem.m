//
//  BBTableViewLoadingItem.m
//  BBTableView
//
//  Created by Gary on 4/22/16.
//  Copyright © 2016 Gary. All rights reserved.
//

#import "BBTableViewLoadingItem.h"

@implementation BBTableViewLoadingItem

+ (BBTableViewLoadingItem*)itemWithTitle:(NSString *)title {
    BBTableViewLoadingItem *item = [[BBTableViewLoadingItem alloc] init];
    item.title = title;
    item.selectionStyle = UITableViewCellSelectionStyleNone;
    return item;
}


@end

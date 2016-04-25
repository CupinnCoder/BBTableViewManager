//
//  ViewController.m
//  BBTableViewManager
//
//  Created by Gary on 4/25/16.
//  Copyright © 2016 Gary. All rights reserved.
//

#import "ViewController.h"
#import "BBTableViewManager.h"
#import <AsyncDisplayKit/AsyncDisplayKit.h>
#import <AsyncDisplayKit/ASAssert.h>
#import "TimeLineTableViewItem.h"
#import "YYFPSLabel.h"

@interface ViewController ()<BBTableViewManagerDelegate> {
    ASTableView         *_tableView;
    BBTableViewManager  *_tableViewManager;
    YYFPSLabel          *_fpsLabel;
}

@end

@implementation ViewController

- (instancetype)init
{
    if (!(self = [super init]))
        return nil;
    
    
    
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _tableView = [[ASTableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain asyncDataFetching:YES];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone; // SocialAppNode has its own separator
    [self.view addSubview:_tableView];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableViewManager = [[BBTableViewManager alloc] initWithTableView:_tableView delegate:self];
    [_tableViewManager registerClass:@"TimeLineTableViewItem"
          forCellWithReuseIdentifier:@"TimeLineTableViewItemCell"];
    
    [self loadData];
    
    
    _fpsLabel = [YYFPSLabel new];
    [_fpsLabel sizeToFit];
    CGRect frmae = _fpsLabel.frame;
    frmae.origin.x = 12;
    frmae.origin.y = 12;
    _fpsLabel.frame = frmae;
    [self.view addSubview:_fpsLabel];
}

- (void)viewWillLayoutSubviews
{
    _tableView.frame = self.view.bounds;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)loadData {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void) {
        @autoreleasepool {
            NSArray *temp = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data"
                                                                                             ofType:@"plist"]];
            BBTableViewSection *section = [BBTableViewSection section];
            for (NSDictionary *entry in temp) {
                [section addItem:[TimeLineTableViewItem itemWithModel:entry]];
            }
            [_tableViewManager addSection:section];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [_tableView reloadData];
        });
    });
}

#pragma mark - CPTableViewManagerDelegate

@end

//
//  CateViewController.h
//  WCLakai
//
//  Created by Wenwen on 2014-09-30.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIFolderTableView.h"

@interface CateViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>

@property(strong, nonatomic) NSArray *cates;

@property (strong, nonatomic) IBOutlet UIFolderTableView *tableView;

@end

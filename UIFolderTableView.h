//
//  UIFolderTableView.h
//  WCLakai
//
//  Created by Wenwen on 2014-09-30.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FolderCoverView.h"

@class UIFolderTableView;


typedef void (^FolderCompletionBlock)(void);
typedef void (^FolderCloseBlock)(UIView *subClassView, CFTimeInterval duration, CAMediaTimingFunction *timingFunction);
typedef void (^FolderOpenBlock)(UIView *subClassView, CFTimeInterval duration, CAMediaTimingFunction *timingFunction);
@protocol UIFolderTableViewDelegate <NSObject>

@optional
-(CGFloat) tableView:(UIFolderTableView *)tableView  xForRowAtIndexPath:(NSIndexPath *)indexPath;

@end

@interface UIFolderTableView : UITableView

@property(strong, nonatomic) UIView * subClassContentView;
@property(assign, nonatomic) IBOutlet id<UIFolderTableViewDelegate> folderDelegate;

-(void) openFolderAtIndexPath :(NSIndexPath *)indexPath
              WithContentView :(UIView *) subClassView
                    openBlock :(FolderOpenBlock) openBlock
                   closeBlock :(FolderCloseBlock) closeBlock
              completionBlock :(FolderCompletionBlock) completionBlock;

@end

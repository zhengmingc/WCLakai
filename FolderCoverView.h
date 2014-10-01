//
//  FolderCoverView.h
//  WCLakai
//
//  Created by Wenwen on 2014-10-01.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FolderCoverView : UIControl

@property(nonatomic, strong) UIView *cover;
@property(nonatomic) CGPoint position;
@property(nonatomic, strong) CALayer *highlight;

-(void) setIsTopView:(BOOL) isTop;
-(void) createHighlightWithFrame :(CGRect)aFrame;
-(id) initWithFrame:(CGRect)frame offset:(CGFloat)delta;

@end

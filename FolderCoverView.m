//
//  FolderCoverView.m
//  WCLakai
//
//  Created by Wenwen on 2014-10-01.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import "FolderCoverView.h"

@implementation FolderCoverView

-(id) initWithFrame:(CGRect)frame offset:(CGFloat)delta
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self createHighlightWithFrame:frame];
        self.cover = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height-delta)];
        self.cover.backgroundColor =[UIColor whiteColor];
        [self addSubview:self.cover];
        
    }
    return self;
}


-(void)createHighlightWithFrame:(CGRect)aFrame
{
    CGRect frame = aFrame;
    frame.size.height = 1.f;
    
    self.highlight = [CALayer layer];
    self.highlight.frame = frame;
    self.highlight.anchorPoint = CGPointZero;
    self.highlight.backgroundColor = [UIColor colorWithWhite:1.f alpha:0.3f].CGColor;
    [self.layer addSublayer:self.highlight];
}


-(void)setIsTopView:(BOOL)isTop
{
    self.highlight.position = CGPointMake(0, isTop?(self.frame.size.height-1):0);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

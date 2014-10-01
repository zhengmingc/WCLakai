//
//  CateTableCell.m
//  WCLakai
//
//  Created by Wenwen on 2014-10-01.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import "CateTableCell.h"

@implementation CateTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.contentView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tmall_bg_main"]];
        self.logo = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 70, 70)];
        self.logo.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.logo];
        
        self.title = [[UILabel alloc] initWithFrame:CGRectMake(80, 20, 230, 20)];
        self.title.font = [UIFont systemFontOfSize:16.0f];
        self.title.backgroundColor = [UIColor clearColor];
        self.title.opaque = NO;
        [self.contentView addSubview:self.title];
        
        self.subTitle = [[UILabel alloc] initWithFrame:CGRectMake(80,40, 230, 14)];
        self.subTitle.font = [UIFont systemFontOfSize:12.0f];
        self.subTitle.textColor = [UIColor colorWithRed:158/255.0
                                                  green:158/255.0
                                                   blue:158/255.0
                                                  alpha:1.0];
        self.subTitle.backgroundColor = [UIColor clearColor];
        self.subTitle.opaque = NO;
        [self.contentView addSubview:self.subTitle];
        
        UILabel *sLine1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 78, 320, 1)];
        sLine1.backgroundColor = [UIColor colorWithRed:198/255.0
                                                 green:198/255.0
                                                  blue:198/255.0
                                                 alpha:1.0];
        UILabel *sLine2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 79, 320, 1)];
        sLine2.backgroundColor = [UIColor whiteColor];
        
        [self.contentView addSubview:sLine1];
        [self.contentView addSubview:sLine2];
        
    }
    return self;

}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end


//
//  SubCateViewController.m
//  WCLakai
//
//  Created by Wenwen on 2014-10-01.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import "SubCateViewController.h"
#define COLUMN 4
#define ROWHEIGHT 70

@interface SubCateViewController ()

@end

@implementation SubCateViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tmall_bg_furley.png"]];
    
    int total = self.subCates.count;
    int rows = (total / COLUMN) + ((total%COLUMN)>0?1:0);
    for( int i=0;i<total;i++){
        int row = i/COLUMN;
        int column = i%COLUMN;
        NSDictionary *data =[self.subCates objectAtIndex:i];
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(80*column, ROWHEIGHT*row, 80, ROWHEIGHT)];
        view.backgroundColor = [UIColor clearColor];
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(15, 15, 50, 50);
        btn.tag = i;
        [btn addTarget:self.cateVC
                action:@selector(subCateBtnAction:)
      forControlEvents:UIControlEventTouchUpInside];
        [btn setBackgroundImage:[UIImage imageNamed:[[data objectForKey:@"imageName"] stringByAppendingFormat:@".png"]]
                                           forState:UIControlStateNormal];
        [view addSubview:btn];
        
        UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 65, 80, 14)];
        lbl.textAlignment = UITextAlignmentCenter;
        lbl.textColor = [UIColor colorWithRed:204/255.0
                                        green:204/255.0
                                         blue:204/255.0
                                        alpha:1.0];
        lbl.font = [UIFont systemFontOfSize:12.0f];
        lbl.backgroundColor = [UIColor clearColor];
        lbl.text = [data objectForKey:@"name"];
        [view addSubview:lbl];
    }
    
    CGRect viewFrame = self.view.frame;
    viewFrame.size.height = ROWHEIGHT * rows + 19;
    self.view.frame  = viewFrame;
                                 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

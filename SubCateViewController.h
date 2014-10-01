//
//  SubCateViewController.h
//  WCLakai
//
//  Created by Wenwen on 2014-10-01.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CateViewController.h"

@interface SubCateViewController : UIViewController
@property(strong, nonatomic) NSArray *subCates;
@property(strong, nonatomic) CateViewController *cateVC;

@end

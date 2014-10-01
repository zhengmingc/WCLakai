//
//  UIView+screenshot.h
//  WCLakai
//
//  Created by Wenwen on 2014-10-01.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (screenshot)
-(UIImage *) screenshotWithOffset:(CGFloat)deltaY;
-(UIImage *) screenshot;

@end

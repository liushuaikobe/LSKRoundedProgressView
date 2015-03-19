//
//  LSKRoundedProgressView.h
//  LSKRoundedProgressView
//
//  Created by Shuai Liu on 15/3/19.
//  Copyright (c) 2015年 vars.me. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSKRoundedProgressView : UIView

@property (nonatomic, assign) CGFloat progress;

@property (nonatomic, assign) BOOL clockWise;

@property (nonatomic, assign) CGFloat progressWidth;

@property (nonatomic, strong) UIColor *trackColor;
@property (nonatomic, copy) UIColor *progressColor;

@end

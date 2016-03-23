//
//  CustomFullContentViewController.h
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/23.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomFullContentViewController : CustomViewController

//  level            view            frame
//  ---------------------------------------------------------------
//
//  highest          windowView      0 x  0 x width x height
//
//  higher           loadingView     0 x 64 x width x (height - 64)
//
//  high             titleView       0 x  0 x width x 64
//
//  high             contentView     0 x  0 x width x height
//
//  normal           backgroundView  0 x  0 x width x height
//
//  low              view            0 x  0 x width x height

@property (nonatomic, strong) UIView *m_windowView;
@property (nonatomic, strong) UIView *m_loadingView;
@property (nonatomic, strong) UIView *m_titleView;
@property (nonatomic, strong) UIView *m_contentView;
@property (nonatomic, strong) UIView *m_backgroundView;

- (void)buildWindowView;
- (void)buildLoadingView;
- (void)buildTitleView;
- (void)removeTitleView;
- (void)buildContentView;
- (void)buildBackgroundView;

@end

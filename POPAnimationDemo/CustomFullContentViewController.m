//
//  CustomFullContentViewController.m
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/23.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "CustomFullContentViewController.h"
#import "CustomViewControllerSubviewTagValue.h"

@implementation CustomFullContentViewController

- (void)setup {
    
    [super setup];
    
    [self buildWindowView];
    [self buildLoadingView];
    [self buildTitleView];
    [self buildContentView];
    [self buildBackgroundView];
    
    self.m_loadingView.userInteractionEnabled = NO;
    self.m_windowView.userInteractionEnabled  = NO;
}

- (void)buildWindowView {
    
    self.m_windowView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.m_width, self.m_height)];
    
    self.m_windowView.tag = kWindowView;
    
    [self.m_windowView addSubview:self.m_windowView];
}

- (void)buildLoadingView {
    
    self.m_loadingView = [[UIView alloc]initWithFrame:CGRectMake(0, 64, self.m_width, self.m_height - 64)];
    
    self.m_loadingView.tag = kLoadingView;
    
    [self.view addSubview:self.m_loadingView];
}

- (void)buildTitleView {
    
    self.m_titleView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.m_width, 64)];
    
    self.m_titleView.tag = kTitleView;
    
    [self.view addSubview:self.m_titleView];
}

- (void)removeTitleView {

    if (self.m_titleView) {
        
        [self.m_titleView removeFromSuperview];
    }
}

- (void)buildContentView {
    
    self.m_contentView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.m_width, self.m_height)];
    
    self.m_contentView.tag = kContentView;
    
    [self.view addSubview:self.m_contentView];
}

- (void)buildBackgroundView {
    
    self.m_backgroundView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.m_width, self.m_height)];
    
    self.m_backgroundView.tag = kBackgroundView;
    
    [self.view addSubview:self.m_backgroundView];
}

@end

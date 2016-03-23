//
//  NormalTitleViewController.m
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/23.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "NormalTitleViewController.h"
#import "UIColor+CustomColors.h"
#import "UIView+SetRect.h"
#import "UIFont+Fonts.h"

@implementation NormalTitleViewController

- (void)buildTitleView {

    [super buildTitleView];
    
    // Title Label.
    UILabel *headLineLabel = [UILabel new];
    
    headLineLabel.font = [UIFont HeitiSCWithFontSize:20.f];
    headLineLabel.textAlignment = NSTextAlignmentCenter;
    headLineLabel.textColor = [UIColor customGrayColor];
    headLineLabel.text = self.title;
    
    [headLineLabel sizeToFit];
    
    headLineLabel.center = self.m_titleView.m_middlePoint;
    
    // Line.
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, 63.5, self.view.m_width, 0.5f)];
    
    line.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.25];
    
    [self.m_titleView addSubview:line];
    
    // Back Button.
    UIImage *image = [UIImage imageNamed:@"backIcon"];
    
    UIButton *backBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 64)];
    
    backBtn.center = CGPointMake(20, self.m_titleView.m_middleY);
    
    [backBtn setImage:image forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(popSelf) forControlEvents:UIControlEventTouchUpInside];
}

- (void)popSelf {
    
    [self popViewControllerAnimated:YES];
}

@end

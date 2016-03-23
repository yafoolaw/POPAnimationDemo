//
//  FullTitleVisualEffectViewController.m
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/23.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "FullTitleVisualEffectViewController.h"
#import "UIView+SetRect.h"
#import "UIColor+CustomColors.h"
#import "UIFont+Fonts.h"

@interface FullTitleVisualEffectViewController ()

@property (nonatomic, strong) UIVisualEffectView *m_effectView;
@property (nonatomic, strong) UIVisualEffectView *m_vibrancyEffectView;

@end

@implementation FullTitleVisualEffectViewController

- (void)buildTitleView {

    [super buildTitleView];
    
    // 添加模糊效果
    self.m_effectView = [[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
    
    self.m_effectView.userInteractionEnabled = NO;
    self.m_effectView.frame                  = self.m_titleView.bounds;
    self.m_effectView.userInteractionEnabled = YES;
    
    [self.m_titleView addSubview:self.m_effectView];
    
    // 需要与作用的EffectView的效果一致
    self.m_vibrancyEffectView
    = [[UIVisualEffectView alloc]initWithEffect:[UIVibrancyEffect effectForBlurEffect:(UIBlurEffect*)self.m_effectView.effect]];
    
    self.m_vibrancyEffectView.frame = self.m_effectView.bounds;
    
    [self.m_effectView.contentView addSubview:self.m_vibrancyEffectView];
    
    // Back Btn.
    UIImage *image = [UIImage imageNamed:@"backIconTypeTwo"];
    
    UIButton *backBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 64)];
    
    backBtn.center = CGPointMake(20, self.m_titleView.m_middleY);
    [backBtn setImage:image forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(popSelf) forControlEvents:UIControlEventTouchUpInside];
    [backBtn.imageView setContentMode:UIViewContentModeCenter];
    [self.m_titleView addSubview:backBtn];
    
    // Title Label.
    UILabel *headLineLabel = [UILabel new];
    
    headLineLabel.font = [UIFont HeitiSCWithFontSize:20.f];
    headLineLabel.textAlignment = NSTextAlignmentCenter;
    headLineLabel.textColor = [UIColor customGrayColor];
    headLineLabel.text = self.title;
    [headLineLabel sizeToFit];
    headLineLabel.center = self.m_titleView.m_middlePoint;
    
    [self.m_vibrancyEffectView.contentView addSubview:backBtn];
    [self.m_vibrancyEffectView.contentView addSubview:headLineLabel];
    
}

- (void)popSelf {
    
    [self popViewControllerAnimated:YES];
}

@end

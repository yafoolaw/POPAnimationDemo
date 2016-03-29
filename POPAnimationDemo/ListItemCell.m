//
//  ListItemCell.m
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/29.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "ListItemCell.h"
#import "UIColor+CustomColors.h"
#import "POP.h"
#import "Item.h"
#import "UIFont+Fonts.h"

@interface ListItemCell ()

@property (nonatomic, strong) UILabel *m_titleLabel;
@property (nonatomic, strong) UILabel *m_subTitleLabel;

@end

@implementation ListItemCell

- (void)setupCell {

    self.accessoryType  = UITableViewCellAccessoryDisclosureIndicator;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)buildSubview {

    self.m_titleLabel           = [[UILabel alloc] initWithFrame:CGRectMake(10, 8, 290, 25)];
    self.m_titleLabel.font      = [UIFont HeitiSCWithFontSize:20.f];
    self.m_titleLabel.textColor = [[UIColor blackColor]colorWithAlphaComponent:0.65f];
    [self addSubview:self.m_titleLabel];
    
    self.m_subTitleLabel           = [[UILabel alloc]initWithFrame:CGRectMake(10, 35, 290, 10)];
    self.m_subTitleLabel.font      = [UIFont AvenirWithFontSize:8.5];
    self.m_subTitleLabel.textColor = [UIColor grayColor];
    [self addSubview:self.m_subTitleLabel];
}

- (void)loadContent {

    if (self.dataAdapter.data) {
        
        Item *item                = self.dataAdapter.data;
        self.m_titleLabel.text    = item.m_name;
        self.m_subTitleLabel.text = [NSString stringWithFormat:@"%@",item.m_object];
    }
    
    if (self.indexPath.row %2) {
        
        self.backgroundColor = [[UIColor grayColor]colorWithAlphaComponent:0.05];
        
    } else {
        
        self.backgroundColor = [UIColor whiteColor];
    }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {

    [super setHighlighted:highlighted animated:animated];
    
    if (highlighted) {
        
        POPBasicAnimation *scaleAnimation = [POPBasicAnimation animationWithPropertyNamed:kPOPViewScaleXY];
        scaleAnimation.duration           = 0.1f;
        scaleAnimation.toValue            = [NSValue valueWithCGPoint:CGPointMake(0.95, 0.95)];
        [self.m_titleLabel pop_addAnimation:scaleAnimation forKey:nil];
        
    } else {
        
        POPSpringAnimation *scaleAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
        scaleAnimation.toValue             = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
        scaleAnimation.velocity            = [NSValue valueWithCGPoint:CGPointMake(2, 2)];
        scaleAnimation.springBounciness    = 20.f;
        [self.m_titleLabel pop_addAnimation:scaleAnimation forKey:nil];
    }
}

@end

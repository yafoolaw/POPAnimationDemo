//
//  CustomViewController.h
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/22.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomViewController : UIViewController

@property (nonatomic) CGFloat m_width;
@property (nonatomic) CGFloat m_height;
@property (nonatomic) BOOL    m_enableInteractivePopGestureRecongizer;

- (void)setup;
- (void)useInteractivePopGestureRecongizer;
- (void)popViewControllerAnimated:(BOOL)animated;
- (void)popToRootViewControllerAnimater:(BOOL)animated;


@end

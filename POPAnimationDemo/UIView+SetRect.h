//
//  UIView+SetRect.h
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/23.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  UIScreen width.
 */
#define  ScreenWidth   [UIScreen mainScreen].bounds.size.width

/**
 *  UIScreen height.
 */
#define  ScreenHeight  [UIScreen mainScreen].bounds.size.height

/**
 *  Status bar height.
 */
#define  StatusBarHeight      (20.f)

/**
 *  Navigation bar height.
 */
#define  NavigationBarHeight  (44.f)

/**
 *  Tabbar height.
 */
#define  TabbarHeight         (49.f)

/**
 *  Status bar & navigation bar height.
 */
#define  StatusBarAndNavigationBarHeight   (20.f + 44.f)

/**
 *  iPhone4 or iPhone4s
 */
#define  iPhone4_4s     (Width == 320.f && Height == 480.f ? YES : NO)

/**
 *  iPhone5 or iPhone5s
 */
#define  iPhone5_5s     (Width == 320.f && Height == 568.f ? YES : NO)

/**
 *  iPhone6 or iPhone6s
 */
#define  iPhone6_6s     (Width == 375.f && Height == 667.f ? YES : NO)

/**
 *  iPhone6Plus or iPhone6sPlus
 */
#define  iPhone6_6sPlus (Width == 414.f && Height == 736.f ? YES : NO)

@interface UIView (SetRect)

/*----------------------
 * Absolute Coordinate *
 ----------------------*/

@property (nonatomic) CGPoint m_viewOrigin;
@property (nonatomic) CGSize  m_viewSize;

@property (nonatomic) CGFloat m_x;
@property (nonatomic) CGFloat m_y;
@property (nonatomic) CGFloat m_width;
@property (nonatomic) CGFloat m_height;

@property (nonatomic) CGFloat m_top;
@property (nonatomic) CGFloat m_bottom;
@property (nonatomic) CGFloat m_left;
@property (nonatomic) CGFloat m_right;

@property (nonatomic) CGFloat m_centerX;
@property (nonatomic) CGFloat m_centerY;

/*----------------------
 * Relative Coordinate *
 ----------------------*/

@property (nonatomic, readonly) CGFloat m_middleX;
@property (nonatomic, readonly) CGFloat m_middleY;
@property (nonatomic, readonly) CGPoint m_middlePoint;

@end

//
//  UIView+SetRect.m
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/23.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "UIView+SetRect.h"

@implementation UIView (SetRect)

- (void)setM_viewOrigin:(CGPoint)m_viewOrigin {

    CGRect newFrame = self.frame;
    newFrame.origin = m_viewOrigin;
    self.frame      = newFrame;
}

- (CGPoint)m_viewOrigin {

    return self.frame.origin;
}

- (void)setM_viewSize:(CGSize)m_viewSize {

    CGRect newFrame = self.frame;
    newFrame.size   = m_viewSize;
    self.frame      = newFrame;
}

- (CGSize)m_viewSize {

    return self.frame.size;
}

- (void)setM_x:(CGFloat)m_x {

    CGRect newFrame   = self.frame;
    newFrame.origin.x = m_x;
    self.frame        = newFrame;
}

- (CGFloat)m_x {

    return self.frame.origin.x;
}

- (void)setM_y:(CGFloat)m_y {

    CGRect newFrame   = self.frame;
    newFrame.origin.y = m_y;
    self.frame        = newFrame;
}

- (CGFloat)m_y {

    return self.frame.origin.y;
}

- (void)setM_width:(CGFloat)m_width {

    CGRect newFrame     = self.frame;
    newFrame.size.width = m_width;
    self.frame          = newFrame;
}

- (CGFloat)m_width {

    return self.frame.size.width;
}

- (void)setM_height:(CGFloat)m_height {

    CGRect newFrame      = self.frame;
    newFrame.size.height = m_height;
    self.frame           = newFrame;
}

- (CGFloat)m_height {

    return  self.frame.size.height;
}

- (void)setM_top:(CGFloat)m_top {

    CGRect newFrame   = self.frame;
    newFrame.origin.y = m_top;
    self.frame        = newFrame;
}

- (CGFloat)m_top {

    return self.frame.origin.y;
}

- (void)setM_bottom:(CGFloat)m_bottom {

    CGRect newFrame   = self.frame;
    newFrame.origin.y = m_bottom - self.frame.size.height;
    self.frame        = newFrame;
}

- (CGFloat)m_bottom {

    return self.frame.origin.y + self.frame.size.height;
}

- (void)setM_left:(CGFloat)m_left {

    CGRect newFrame   = self.frame;
    newFrame.origin.x = m_left;
    self.frame        = newFrame;
}

- (CGFloat)m_left {

    return self.frame.origin.x;
}

- (void)setM_right:(CGFloat)m_right {

    CGRect newFrame   = self.frame;
    newFrame.origin.x = m_right - self.frame.size.height;
    self.frame        = newFrame;
}

- (CGFloat)m_right {

    return self.frame.origin.x + self.frame.size.width;
}

- (void)setM_centerX:(CGFloat)m_centerX {

    CGPoint newCenter = self.center;
    newCenter.x       = m_centerX;
    self.center       = newCenter;
}

- (CGFloat)m_centerX {

    return self.center.x;
}

- (void)setM_centerY:(CGFloat)m_centerY {

    CGPoint newCenter = self.center;
    newCenter.y       = m_centerY;
    self.center       = newCenter;
}

- (CGFloat)m_centerY {

    return self.center.y;
}

- (CGFloat)m_middleX {

    return CGRectGetWidth(self.bounds)/2.f;
}

- (CGFloat)m_middleY {

    return CGRectGetHeight(self.bounds)/2.f;
}

- (CGPoint)m_middlePoint {

    return CGPointMake(CGRectGetWidth(self.bounds)/2.f, CGRectGetHeight(self.bounds)/2.f);
}

@end

//
//  AbstractAlertView.h
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/22.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AbstractAlertView;

@protocol AbstractAlertViewDelegate<NSObject>

@optional

- (void)alertView:(AbstractAlertView*)alertView data:(id)data atIndex:(NSInteger)index;

- (void)alertViewWillHide:(AbstractAlertView*)alertView;

- (void)alertViewDidHide: (AbstractAlertView*)alertView;

@end

@interface AbstractAlertView : UIView

@property (nonatomic, weak)   id <AbstractAlertViewDelegate>  m_delegate;
@property (nonatomic, strong) NSString                       *m_title;
@property (nonatomic, strong) NSString                       *m_subTitle;
@property (nonatomic, strong) NSString                       *m_message;
@property (nonatomic, strong) NSArray <NSString*>            *m_buttonsTitle;
@property (nonatomic, weak)   UIView                         *m_contentView;
@property (nonatomic)         BOOL                            m_autoHidden;
@property (nonatomic)         NSTimeInterval                  m_delayAutoHiddenDuration;

- (void)show;
- (void)hide;
- (void)setView:(UIView*)view WithKey:(NSString*)key;
- (UIView*)viewWithKey:(NSString*)key;


@end

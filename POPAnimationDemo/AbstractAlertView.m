//
//  AbstractAlertView.m
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/22.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "AbstractAlertView.h"

@interface AbstractAlertView ()

@property (nonatomic, strong) NSMapTable *m_mapTable;

@end

@implementation AbstractAlertView

- (instancetype)init {

    if (self = [super init]) {
        
        self.m_autoHidden = NO;
        self.m_delayAutoHiddenDuration = 2.f;
        self.m_mapTable = [NSMapTable strongToWeakObjectsMapTable];
    }
    
    return self;
}

- (void)show {

    [NSException raise:@"AlertViewProtocol" format:@"Can't use show method from subclass"];
}

- (void)hide {

    [NSException raise:@"AlertViewProtocol" format:@"Can't use hide method from subclass"];
}

- (void)setView:(UIView *)view WithKey:(NSString *)key {

    [self.m_mapTable setObject:view forKey:key];
}

- (UIView*)viewWithKey:(NSString *)key {

    return [self.m_mapTable objectForKey:key];
}

@end

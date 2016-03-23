//
//  CustomNavigationController.h
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/23.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CustomViewController;

@interface CustomNavigationController : UINavigationController

- (instancetype)initWithRootViewController:(CustomViewController *)rootViewController
                    setNavigationBarHidden: (BOOL)hidden;

@end

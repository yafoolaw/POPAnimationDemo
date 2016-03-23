//
//  CustomNavigationController.m
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/23.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "CustomNavigationController.h"
#import "CustomViewController.h"

@interface CustomNavigationController ()

@end

@implementation CustomNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (instancetype)initWithRootViewController:(CustomViewController *)rootViewController
                    setNavigationBarHidden: (BOOL)hidden {

    CustomNavigationController *ncController = [[[self class]alloc]initWithRootViewController:rootViewController];
    [rootViewController useInteractivePopGestureRecongizer];
    
    [ncController setNavigationBarHidden:hidden animated:NO];
    
    return ncController;
}

@end

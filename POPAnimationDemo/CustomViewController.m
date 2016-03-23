//
//  CustomViewController.m
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/22.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "CustomViewController.h"
#import <asl.h> // APPLE SYSTEM LOG

// 此宏定义是为了log更简洁(装X)
#define _Flag_NSLog(fmt,...) {                                        \
  do                                                                  \
  {                                                                   \
    NSString *str = [NSString stringWithFormat:fmt, ##__VA_ARGS__];   \
    printf("%s\n",[str UTF8String]);                                  \
    asl_log(NULL, NULL, ASL_LEVEL_NOTICE, "%s", [str UTF8String]);    \
  }                                                                   \
  while (0);                                                          \
}

#ifdef DEBUG
#define ControllerLog(fmt, ...) _Flag_NSLog((@"" fmt), ##__VA_ARGS__)
#else
#define ControllerLog(...)
#endif

@interface CustomViewController ()<UIGestureRecognizerDelegate>

@end

@implementation CustomViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    [self setup];
}

- (void)setup {

    self.m_width              = [UIScreen mainScreen].bounds.size.width;
    self.m_height             = [UIScreen mainScreen].bounds.size.height;
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)useInteractivePopGestureRecongizer {

    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

- (void)popViewControllerAnimated:(BOOL)animated {

    [self.navigationController popViewControllerAnimated:animated];
}

- (void)popToRootViewControllerAnimater:(BOOL)animated {

    [self.navigationController popToRootViewControllerAnimated:animated];
}

- (void)viewDidAppear:(BOOL)animated {

    [super viewDidAppear:animated];
    
#ifdef DEBUG
    
    [self debugMessage];
    
#endif
}

- (void)setM_enableInteractivePopGestureRecongizer:(BOOL)m_enableInteractivePopGestureRecongizer {

    _m_enableInteractivePopGestureRecongizer                          = m_enableInteractivePopGestureRecongizer;
    self.navigationController.interactivePopGestureRecognizer.enabled = m_enableInteractivePopGestureRecongizer;
}

#pragma mark - Debug Message

- (void)debugMessage {

    NSString *classStr = [NSString stringWithFormat:@" %@ ",[self class]];
    NSMutableString *flagStr = [NSMutableString string];
    
    for (int i = 0; i < classStr.length; i++) {
        
        if (i == 0 || i == classStr.length - 1) {
            
            [flagStr appendString:@"+"];
            continue;
        }
        
        [flagStr appendString:@"-"];
    }
    
    NSString *showStr = [NSString stringWithFormat:@"\n%@\n%@\n%@\n",flagStr,classStr,flagStr];
    ControllerLog(@"%@",showStr);
}

@end

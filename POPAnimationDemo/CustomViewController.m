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

@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

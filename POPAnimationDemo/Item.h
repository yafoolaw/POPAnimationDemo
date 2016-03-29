//
//  Item.h
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/29.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property (nonatomic, strong) NSString *m_name;
@property (nonatomic, strong) id        m_object;

+ (instancetype)itemWithName:(NSString*)name object:(id)object;

@end

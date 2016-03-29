//
//  Item.m
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/29.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "Item.h"

@implementation Item

+ (instancetype)itemWithName:(NSString*)name object:(id)object {

    Item *item = [[self class] new];
    
    item.m_name   = name;
    item.m_object = object;
    
    return item;
}

@end

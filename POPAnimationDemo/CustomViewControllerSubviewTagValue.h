//
//  CustomViewControllerSubviewTagValue.h
//  POPAnimationDemo
//
//  Created by FrankLiu on 16/3/23.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#ifndef CustomViewControllerSubviewTagValue_h
#define CustomViewControllerSubviewTagValue_h

//  level            view             tag            Interaction
//  ----------------------------------------------------------------------
//
//  highest          windowView       kWindowView      NO
//
//  higher           loadingView      kLoadingView     NO
//
//  high             titleView        kTitleView       YES
//
//  high             contentView      kContentView     YES
//
//  normal           backgroundView   kContentView     YES
//
//  low              view             -                YES

typedef enum : NSUInteger {
    
    kWindowView = 1000,
    kLoadingView,
    kTitleView,
    kContentView,
    kBackgroundView
    
} EViewControllerSubviewTag;


#endif /* CustomViewControllerSubviewTagValue_h */

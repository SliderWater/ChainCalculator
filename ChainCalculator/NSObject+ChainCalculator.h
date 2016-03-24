//
//  NSObject+ChainCalculator.h
//  ChainCalculator
//
//  Created by 国诚信 on 16/3/24.
//  Copyright © 2016年 SliderWater. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ChainCalculator;

@interface NSObject (ChainCalculator)

+ (int)makeCalculator:(ChainCalculator *(^)(int))maker;

@end

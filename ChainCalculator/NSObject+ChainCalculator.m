//
//  NSObject+ChainCalculator.m
//  ChainCalculator
//
//  Created by 国诚信 on 16/3/24.
//  Copyright © 2016年 SliderWater. All rights reserved.
//

#import "NSObject+ChainCalculator.h"
#import "ChainCalculator.h"

@implementation NSObject (ChainCalculator)

+ (int)makeCalculator:(void (^)(ChainCalculator *))maker {
    
    ChainCalculator *calculator = [[ChainCalculator alloc] init];
    
    maker(calculator);
    
    return calculator.result;
}

@end

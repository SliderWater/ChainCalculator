//
//  ChainCalculator.m
//  ChainCalculator
//
//  Created by 国诚信 on 16/3/24.
//  Copyright © 2016年 SliderWater. All rights reserved.
//

#import "ChainCalculator.h"

typedef ChainCalculator *(^selfBlock)(int);

@implementation ChainCalculator

- (ChainCalculator *(^)(int))add {
    
    ChainCalculator *(^addBlock)(int num) = ^ChainCalculator *(int num) {
        
        _result += num;
        return self;
    };
    return addBlock;
}

- (ChainCalculator *(^)(int))subtract {
    
    ChainCalculator *(^subtractBlock)(int) = ^ChainCalculator *(int num) {
        
        _result -= num;
        return self;
    };
    return subtractBlock;
}

- (ChainCalculator *(^)(int))multiply {
    
    selfBlock multiplyBlock = ^ChainCalculator *(int num) {
        
        _result *= num;
        return self;
    };
    return multiplyBlock;
}

- (ChainCalculator *(^)(int))divide {
    
    selfBlock divideBlock = ^ChainCalculator *(int num) {
        
        _result /= num;
        return self;
    };
    return divideBlock;
}



@end

//
//  ChainCalculator.h
//  ChainCalculator
//
//  Created by 国诚信 on 16/3/24.
//  Copyright © 2016年 SliderWater. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChainCalculator : NSObject

@property (assign, nonatomic, readonly) int result;/**<结果*/

- (ChainCalculator * (^)(int))add;
- (ChainCalculator * (^)(int))subtract;
- (ChainCalculator * (^)(int))multiply;
- (ChainCalculator * (^)(int))divide;

@end

//
//  ViewController.m
//  ChainCalculator
//
//  Created by 国诚信 on 16/3/24.
//  Copyright © 2016年 SliderWater. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ChainCalculator.h"
#import "ChainCalculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    int number = [NSObject makeCalculator:^(ChainCalculator *calculator) {
        
        calculator.add(1).subtract(2).multiply(5).divide(2);
    }];
    NSLog(@"%d", number);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

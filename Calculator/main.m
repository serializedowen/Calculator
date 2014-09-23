//
//  main.m
//  Calculator
//
//  Created by Owen Wang on 2014-09-11.
//  Copyright (c) 2014 OwenInc. All rights reserved.
//
#import "Fraction.m"
#import <Foundation/Foundation.h>

@interface calculator : NSObject

-(void) setAccumulator: (double) value;


-(void) clear;
-(double) accumulator;
// arithmetic methods
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;

-(double) changeSign; // change sign of accumulator
-(double) reciprocal; // 1/accumulator
-(double) xSquared; // accumulator squared


//-(int) reverseNum;
-(int) factorial;

@end
@implementation calculator
{
    double accumulator;
}
-(void) clear
{
    accumulator = 0;
}
-(void) setAccumulator:(double)value
{
    accumulator = value;
}
-(double) accumulator
{
    return accumulator;
}

-(double) substract:(double)value
{
    accumulator -= value;
    return accumulator;
}
-(double) add:(double)value
{
    accumulator += value;
    return accumulator;
}
-(double) changeSign
{
    accumulator = -accumulator;
    return accumulator;
}

-(int) factorial
{
    int result = 1;
    int times = (int)accumulator;
    
    if (times == 0){
        return 0;
    }
    
    while (times > 0){
        result *= times;
        times--;
    }
    return result;
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        @autoreleasepool {
            Fraction *aFraction = [[Fraction alloc] init];
            Fraction *bFraction = [[Fraction alloc] init];
            [aFraction setNumerator: 1]; // 1st fraction is 1/4
            [aFraction setDenominator: 4];
            [aFraction print];
            NSLog (@" =");
            NSLog (@"%g", [aFraction convertToNum]);
            
            [bFraction print]; // never assigned a value
            NSLog (@" =");
            NSLog (@"%g", [bFraction convertToNum]);
        }
        
    }
    return 0;
}


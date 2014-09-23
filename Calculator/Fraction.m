//
//  Fraction.m
//  Calculator
//
//  Created by Owen Wang on 2014-09-23.
//  Copyright (c) 2014 OwenInc. All rights reserved.
//

#import <Foundation/Foundation.h> 

@interface Fraction: NSObject
-(void) print;
-(void) setNumerator: (int) n; -(void) setDenominator: (int) d; -(int) numerator;
-(int) denominator;
-(double) convertToNum;
@end
@implementation Fraction {
    int numerator;
    int denominator; }

-(void) print {
    NSLog (@" %i/%i ", numerator, denominator); }
-(void) setNumerator: (int) n {
    numerator = n; }
-(void) setDenominator: (int) d {
    denominator = d; }
-(int) numerator {
    return numerator; }
-(int) denominator {
    return denominator; }
-(double) convertToNum {
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
} @end

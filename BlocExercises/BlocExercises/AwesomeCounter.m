//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableString *theString = [@"" mutableCopy];
    NSInteger lower = MIN(number, otherNumber);
    NSInteger higher = MAX(number, otherNumber);
    for (NSInteger num = lower; num <= higher; num++) {
        NSString *numStr = [NSString stringWithFormat:@"%ld", (long)num];
        [theString appendString:numStr];
    }
    return theString;
}

@end

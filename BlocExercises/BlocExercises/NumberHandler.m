//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    return [NSNumber numberWithInt:([number intValue] * 2)];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *numArray = [@[] mutableCopy];
    
    for(NSInteger num = number; num <= otherNumber; num++) {
        [numArray addObject:@(num)];
    }
    return numArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    
    return [[arrayOfNumbers valueForKey:@"@min"] integerValue];
    
    NSMutableArray *numArray = [arrayOfNumbers mutableCopy];
    
    [numArray sortUsingSelector:@selector(compare:)];
    
//    [numArray sortUsingComparator:^NSComparisonResult(id obj1, id obj2){
//        NSNumber *numberA = (NSNumber *)obj1;
//        NSNumber *numberB = (NSNumber *)obj2;
//        
//        int intValueA = [numberA intValue];
//        int intValueB = [numberB intValue];
//        
//        if (intValueA > intValueB) {
//            return NSOrderedDescending;
//        } else if (intValueA < intValueB) {
//            return NSOrderedAscending;
//        }
//        return NSOrderedSame;
//    }];
    
    return [numArray[0] longValue];
}

@end

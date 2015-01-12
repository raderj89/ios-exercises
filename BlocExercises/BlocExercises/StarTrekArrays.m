//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    return [characterString componentsSeparatedByString:@";"];;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *theArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [theArray sortUsingDescriptors:@[sortDescriptor]];
    return theArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    BOOL worfIsPresent = false;
    
    for(NSString *character in characterArray) {
        NSRange range = [character rangeOfString:@"worf" options:NSCaseInsensitiveSearch];
        if(range.location != NSNotFound) {
            worfIsPresent = true;
            break;
        }
    }
    return worfIsPresent;
}

@end

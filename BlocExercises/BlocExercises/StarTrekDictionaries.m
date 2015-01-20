//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *favDrinks = [@[] mutableCopy];
    for (NSDictionary* charDict in charactersArray) {
        [favDrinks addObject:charDict[@"favorite drink"]];
    }
    return favDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSString *aQuote = @"Godzilla is inside each one of us";
    NSMutableDictionary *dictToReturn = [characterDictionary mutableCopy];
    if (dictToReturn[@"quote"] == nil) {
        [dictToReturn setObject:(aQuote) forKey:@"quote"];
    }
    return dictToReturn;
}

@end

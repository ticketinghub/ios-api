//
//  TXHOption.m
//  TicketingHub-ios
//
//  Created by Abizer Nasir on 12/08/2013.
//  Copyright (c) 2013 TicketingHub. All rights reserved.
//

#import "TXHOption.h"

#import "NSDictionary+JCSKeyMapping.h"

@interface TXHOption ()

@property (assign, nonatomic) NSUInteger weekday;
@property (strong, nonatomic) NSString *timeString;
@property (copy, nonatomic) NSString *duration;

@end

@implementation TXHOption

#pragma  mark - Convenience constructor

+ (instancetype)createWithDictionary:(NSDictionary *)dictionary {
    TXHOption *option = [[self alloc] init];

    if (!option) {
        return nil; // Bail!
    }

    NSDictionary *mappedDictionary = [dictionary jcsRemapKeysWithMapping:[self mappingDictionary] removingNullValues:YES];

    [option setValuesForKeysWithDictionary:mappedDictionary];

    return option;
}

#pragma mark - Superclass overrides

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    // Do nothing; just log the request so that it doesn't throw an exception
    NSLog(@"Trying to set value: %@, for undefined key: %@", value, key);
}

#pragma  mark - Private methods

// Maps the parameters from the input dictionary to the property names of the class
+ (NSDictionary *)mappingDictionary {
    static NSDictionary *dictionary = nil;

    if (!dictionary) {
        dictionary = @{@"wday" : @"weekday", @"time" : @"timeString"};
    }

    return dictionary;
}


@end
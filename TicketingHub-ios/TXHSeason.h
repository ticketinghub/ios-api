//
//  TXHSeason.h
//  TicketingHub-ios
//
//  Created by Abizer Nasir on 12/08/2013.
//  Copyright (c) 2013 TicketingHub. All rights reserved.
//
//  Representation of a season

#import <Foundation/Foundation.h>

@interface TXHSeason : NSObject

@property (strong, readonly, nonatomic) NSString *startsOnDateString;
@property (strong, readonly, nonatomic) NSString *endsOnDateString;
@property (strong, readonly, nonatomic) NSArray *options;

+ (instancetype)seasonWithStartDate:(NSString *)aStartDate endDate:(NSString *)anEndDate options:(NSArray *)optionsArray;

@end

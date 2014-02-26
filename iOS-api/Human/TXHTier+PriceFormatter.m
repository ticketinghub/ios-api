//
//  TXHTier+PriceFormatter.m
//  iOS-api
//
//  Created by Bartek Hugo Trzcinski on 13/02/14.
//  Copyright (c) 2014 TicketingHub. All rights reserved.
//

#import "TXHTier+PriceFormatter.h"
#import "TXHAvailability.h"
#import "TXHProduct.h"
#import "TXHSupplier.h"
#import "TXHNumberFormatterCache.h"

@implementation TXHTier (PriceFormatter)

- (NSString *)priceStringForProduct:(TXHProduct *)product
{
    TXHSupplier *suplier = product.supplier;
    NSNumberFormatter *formatter = [TXHNUMBERFORMATTERCACHE formatterForSuplier:suplier];
    
    return [formatter stringFromNumber:@(self.priceValue / 100)];
}

@end
// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to TXHTier.m instead.

#import "_TXHTier.h"

const struct TXHTierAttributes TXHTierAttributes = {
	.discount = @"discount",
	.limit = @"limit",
	.name = @"name",
	.price = @"price",
	.size = @"size",
	.tierDescription = @"tierDescription",
	.tierId = @"tierId",
};

const struct TXHTierRelationships TXHTierRelationships = {
	.availability = @"availability",
	.upgrades = @"upgrades",
};

const struct TXHTierFetchedProperties TXHTierFetchedProperties = {
};

@implementation TXHTierID
@end

@implementation _TXHTier

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Tier" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Tier";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Tier" inManagedObjectContext:moc_];
}

- (TXHTierID*)objectID {
	return (TXHTierID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"discountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"discount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"limitValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"limit"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"priceValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"price"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"sizeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"size"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic discount;



- (int32_t)discountValue {
	NSNumber *result = [self discount];
	return [result intValue];
}

- (void)setDiscountValue:(int32_t)value_ {
	[self setDiscount:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveDiscountValue {
	NSNumber *result = [self primitiveDiscount];
	return [result intValue];
}

- (void)setPrimitiveDiscountValue:(int32_t)value_ {
	[self setPrimitiveDiscount:[NSNumber numberWithInt:value_]];
}





@dynamic limit;



- (int32_t)limitValue {
	NSNumber *result = [self limit];
	return [result intValue];
}

- (void)setLimitValue:(int32_t)value_ {
	[self setLimit:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveLimitValue {
	NSNumber *result = [self primitiveLimit];
	return [result intValue];
}

- (void)setPrimitiveLimitValue:(int32_t)value_ {
	[self setPrimitiveLimit:[NSNumber numberWithInt:value_]];
}





@dynamic name;






@dynamic price;



- (int32_t)priceValue {
	NSNumber *result = [self price];
	return [result intValue];
}

- (void)setPriceValue:(int32_t)value_ {
	[self setPrice:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitivePriceValue {
	NSNumber *result = [self primitivePrice];
	return [result intValue];
}

- (void)setPrimitivePriceValue:(int32_t)value_ {
	[self setPrimitivePrice:[NSNumber numberWithInt:value_]];
}





@dynamic size;



- (int32_t)sizeValue {
	NSNumber *result = [self size];
	return [result intValue];
}

- (void)setSizeValue:(int32_t)value_ {
	[self setSize:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveSizeValue {
	NSNumber *result = [self primitiveSize];
	return [result intValue];
}

- (void)setPrimitiveSizeValue:(int32_t)value_ {
	[self setPrimitiveSize:[NSNumber numberWithInt:value_]];
}





@dynamic tierDescription;






@dynamic tierId;






@dynamic availability;

	

@dynamic upgrades;

	
- (NSMutableSet*)upgradesSet {
	[self willAccessValueForKey:@"upgrades"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"upgrades"];
  
	[self didAccessValueForKey:@"upgrades"];
	return result;
}
	






#if TARGET_OS_IPHONE




- (NSFetchedResultsController*)newUpgradesFetchedResultsControllerWithSortDescriptors:(NSArray*)sortDescriptors {
	NSFetchRequest *fetchRequest = [NSFetchRequest new];
	
	fetchRequest.entity = [NSEntityDescription entityForName:@"Upgrade" inManagedObjectContext:self.managedObjectContext];
	fetchRequest.predicate = [NSPredicate predicateWithFormat:@"tier == %@", self];
	fetchRequest.sortDescriptors = sortDescriptors;
	
	return [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest
											   managedObjectContext:self.managedObjectContext
												 sectionNameKeyPath:nil
														  cacheName:nil];
}


#endif

@end

#import "_TXHTier.h"

@interface TXHTier : _TXHTier {}

/** Create or update an Tier object.

 This is created within the context of a creating an Availability, so not passing it here
 @param dict An NSDictionary of key values to create or update the object with
 @param moc A managed object context in which to create or update an Upgrade object
 @returns a TXHTier object or nil if dict is an empty dictionary.
 */
+ (instancetype)updateWithDictionaryCreateIfNeeded:(NSDictionary *)dict inManagedObjectContext:(NSManagedObjectContext *)moc __attribute__((nonnull));

/** Gets a Tier object from its ID if it exists
 @param tierID An NSString for the Tier ID
 @param moc the managed object in which to search for the Tier object
 @returns the TXHTier object with the given ID if it exists or nil.
 */
+ (instancetype)tierWithID:(NSString *)tierID inManagedObjectContext:(NSManagedObjectContext *)moc __attribute__((nonnull));

/** Create a TXHTier with a dictionary
 @param dict A dictionary of key values. The keys are the raw keys from the API.
 @param moc A managed object context in which to create the object
 @returns A TXHTier object or nil if the dictionary is empty.
 */
+ (TXHTier *)createWithDictionary:(NSDictionary *)dict inManagedObjectContext:(NSManagedObjectContext *)moc __attribute__((nonnull));

/** Update with values from a dictionary
 @param dict A dictionary of key values. The keys are the raw keys from the API.
 */
- (void)updateWithDictionary:(NSDictionary *)dict __attribute__((nonnull));


@end
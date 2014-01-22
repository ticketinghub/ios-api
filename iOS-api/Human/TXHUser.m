#import "TXHUser.h"
#import "NSDictionary+JCSKeyMapping.h"


@interface TXHUser ()

// Private interface goes here.

@end


@implementation TXHUser

#pragma mark - set up and tear down

+ (instancetype)updateWithDictionaryCreateIfNeeded:(NSDictionary *)dictionary inManagedObjectContext:(NSManagedObjectContext *)moc {
    NSParameterAssert(dictionary);
    // mogenerated code asserts the managed object context

    if (![dictionary count]) {
        return nil;
    }
    
    TXHUser *user = [[self class] userWithEmail:dictionary[@"email"] inManagedObjectContext:moc];
    if (!user) {
        user = [[self class] insertInManagedObjectContext:moc];
    }

    return [user updateWithDictionary:dictionary];
}

#pragma mark - superclass overrides

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
    if ([key isEqualToString:@"fullName"]) {
        return [NSSet setWithArray:@[TXHUserAttributes.firstName, TXHUserAttributes.lastName]];
    }

    return [super keyPathsForValuesAffectingValueForKey:key];
}

#pragma mark - Public methods

- (id)updateWithDictionary:(NSDictionary *)dictionary {
    NSDictionary *userDictionary = [dictionary jcsRemapKeysWithMapping:[[self class] mappingDictionary] removingNullValues:YES];

    [self setValuesForKeysWithDictionary:userDictionary];

    return self;
}

#pragma mark - Custom accessors

- (NSString *)fullName {
    NSString *fullName;
    if (self.firstName && self.lastName) {
        fullName = [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
    } else if (self.firstName) {
        fullName = self.firstName;
    } else if (self.lastName) {
        fullName = self.lastName;
    } else {
        fullName = self.email;
    }

    return fullName;
}

#pragma mark - Private methods

+ (NSDictionary *)mappingDictionary {
    static NSDictionary *dict = nil;

    if (!dict) {
        dict = @{@"first_name": @"firstName",
                 @"last_name": @"lastName",
                 @"id": @"userId"};
    }

    return dict;
}

+ (instancetype)userWithEmail:(NSString *)email inManagedObjectContext:(NSManagedObjectContext *)moc {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:[[self class] entityName]];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K == %@", TXHUserAttributes.email, email];
    [request setPredicate:predicate];

    NSError *error;
    NSArray *users = [moc executeFetchRequest:request error:&error];
    if (!users) {
        NSLog(@"Unable to fetch users because: %@", error);
        return nil;
    }

    if ([users count] > 1) {
        NSLog(@"Too many users");
        return nil;
    }

    return [users firstObject];
}

@end

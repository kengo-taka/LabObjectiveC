//
//  Pizza.h
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/02.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    small,
    medium,
    large,
} PizzaSize;

@interface Pizza : NSObject

- (instancetype) initWithSize: (NSString*) size toppings: (NSArray *) toppings;
@property NSString* size;
@property NSArray* toppings;
- ()pintPizza;
@end

NS_ASSUME_NONNULL_END

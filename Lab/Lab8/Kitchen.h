//
//  Kitchen.h
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/04.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN
@protocol KitchenDelegate <NSObject>

-(BOOL)shouldMakePizza:(PizzaSize)size andToppings:(NSArray*)toppings;
-(BOOL)kitchenShouldUpgradeOrder;
-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end
@interface Kitchen : NSObject
@property (nonatomic, weak) id<KitchenDelegate> delegate;
-(Pizza *)makePizza:(Pizza*) pizza;
@end

NS_ASSUME_NONNULL_END

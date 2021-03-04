//
//  Kitchen.m
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/04.
//

#import "Kitchen.h"

@implementation Kitchen

-(Pizza *)makePizza:(Pizza*) pizza{
  if ([self.delegate shouldMakePizza:pizza.size andToppings:pizza.toppings] == NO){
    NSLog(@"We don't make your Pizza.");
    pizza.size =@"nothing";
    return  pizza;
  } else {
    NSLog(@"We're making your Pizza.");
    if([self.delegate kitchenShouldUpgradeOrder] == YES) {
      pizza.size = @"large";
      [self.delegate kitchenDidMakePizza:pizza];
      return  pizza;
    }
    [self.delegate kitchenDidMakePizza:pizza];
    return  pizza;
  }
}
@end

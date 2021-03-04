//
//  NewManager.m
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/04.
//

#import "NewManager.h"

@implementation NewManager

-(BOOL)shouldMakePizza:(PizzaSize)size andToppings:(NSArray*)toppings{
  if([toppings containsObject:@"anchovies"]) {
    return NO;
  }else{
    return  YES;
  }
}

-(BOOL)kitchenShouldUpgradeOrder{
  return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
  NSLog(@"We're done");
}

@end

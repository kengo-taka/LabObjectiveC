//
//  SecondManager.m
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/04.
//

#import "SecondManager.h"

@implementation SecondManager

-(BOOL)shouldMakePizza:(PizzaSize)size andToppings:(NSArray*)toppings{
  return  YES;
}
-(BOOL)kitchenShouldUpgradeOrder{
  return YES;
}
-(void)kitchenDidMakePizza:(Pizza *)pizza{
  NSLog(@"Hola.We're done.");
}
@end

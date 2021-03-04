//
//  DeliveryCar.m
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/04.
//

#import "DeliveryCar.h"

@implementation DeliveryCar

-(instancetype)initWithPizza:(NSMutableArray *)pizzaarray
{
  self = [super init];
  if (self) {
      _pizzaarray = pizzaarray;
  }
  return self;
}
-(void)deliverPizza:(NSMutableArray*)pizza{
  NSLog(@"Pizza delivered");
}

@end

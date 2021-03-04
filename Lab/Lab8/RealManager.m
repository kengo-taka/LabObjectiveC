//
//  RealManager.m
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/04.
//

#import "RealManager.h"
#import "DeliveryService.h"
@implementation RealManager

-(instancetype)initWithPizza:(NSMutableArray *)pizzaarray
{
  self = [super init];
  if (self) {
      _pizzaarray = pizzaarray;
  }
  return self;
}
-(void)deliverPizza:(NSMutableArray*)pizza{
  DeliveryService *ds = [[DeliveryService alloc] init];
  [ds deliverPizza:pizza];
}


@end

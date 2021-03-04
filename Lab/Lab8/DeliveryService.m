//
//  DeliveryService.m
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/04.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"
#import "Pizza.h"
@implementation DeliveryService

-(instancetype)initWithPizza:(NSMutableArray *)pizzaarray
{
  self = [super init];
  if (self) {
      _pizzaarray = pizzaarray;
  }
  return self;
}
-(void)deliverPizza:(NSMutableArray*)pizza{
  NSLog(@"--- Here is pizza order ---");
  for (int i = 0; i < pizza.count; i++){
    NSString *toppingString = [[pizza[i] toppings] componentsJoinedByString:@", "];
    NSLog(@"%d : Pizza is %@ size with %@",i, [pizza[i] size], toppingString);
  }
  DeliveryCar *dc = [[DeliveryCar alloc] init];
  [dc deliverPizza:pizza];
}



@end

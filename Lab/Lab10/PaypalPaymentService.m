//
//  PaypalPaymentService.m
//  Lab10
//
//  Created by Takamiya Kengo on 2021/03/03.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmout:(NSInteger) number{
  NSLog(@"Paypal processed amout $%ld",(long)number);
}


-(BOOL)canProcessPayment{
  int randInt = arc4random_uniform(2);
  if (randInt == 0){
    return  YES;
  } else {
    return  NO;
  }
}
@end

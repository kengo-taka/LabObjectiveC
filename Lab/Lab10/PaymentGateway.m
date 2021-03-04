//
//  PaymentGateway.m
//  Lab10
//
//  Created by Takamiya Kengo on 2021/03/03.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)printProcess:(NSInteger) money
{
  [self.delegate processPaymentAmout:money];
  if ([self.delegate canProcessPayment] == YES){
    NSLog(@"Payment is completed");
  } else {
    NSLog(@"Payment is not completed");
  }
}

@end

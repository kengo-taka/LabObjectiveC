//
//  main.m
//  Lab10
//
//  Created by Takamiya Kengo on 2021/03/03.
//

#import <Foundation/Foundation.h>
#import "inputCollector.h"
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
   
    inputCollector *ic = [[inputCollector alloc] init];
    PaymentGateway *pg = [[PaymentGateway alloc] init];
    
    int randInt = arc4random_uniform(901)+100;
    NSString* userinput = [ic inputForPrompt:[NSString stringWithFormat: @"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple",randInt]];
    if ([userinput isEqualToString:@"1"]) {
      AmazonPaymentService *ap = [[AmazonPaymentService alloc] init];
      pg.delegate = ap;
      [pg printProcess:randInt];
    } else if ([userinput isEqualToString:@"2"]) {
      PaypalPaymentService *pp = [[PaypalPaymentService alloc] init];
      pg.delegate = pp;
      [pg printProcess:randInt];

    } else if ([userinput isEqualToString:@"3"]) {
      StripePaymentService *sp = [[StripePaymentService alloc] init];
      pg.delegate = sp;
      [pg printProcess:randInt];

    } else if ([userinput isEqualToString:@"4"]) {
      ApplePaymentService *app = [[ApplePaymentService alloc] init];
      pg.delegate = app;
      [pg printProcess:randInt];

    } else {
      NSLog(@"Not available.");
    }
    
  }
  return 0;
}

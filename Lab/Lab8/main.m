//
//  main.m
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/02.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "NewManager.h"
#import "SecondManager.h"
#import "Kitchen.h"
#import "inputCollector.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"
#import "RealManager.h"



int main(int argc, const char * argv[])
{
  @autoreleasepool {
    inputCollector *ic = [[inputCollector alloc] init];
    NSMutableArray *pizzaArray = [[NSMutableArray alloc] init];
    NewManager *nm = [[NewManager alloc] init];
    SecondManager *sm = [[SecondManager alloc] init];
    Kitchen *kc1 = [[Kitchen alloc] init];
    Kitchen *kc2 = [[Kitchen alloc] init];
    kc1.delegate = nm;
    kc2.delegate = sm;
    
    while (TRUE) {
      NSLog(@"Please pick your pizza size and toppings:");
      char str[100];
      fgets (str, 100, stdin);
      
      NSString *inputString = [[NSString alloc] initWithUTF8String:str];
      inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
      
      NSArray *sizeAndTopping = [inputString componentsSeparatedByString:@" "];
      NSString *size = sizeAndTopping[0];
      NSArray *topping ;
      if (sizeAndTopping.count == 1){
        topping = @[@"no topping"];
      } else {
        topping = [sizeAndTopping subarrayWithRange:NSMakeRange(1, sizeAndTopping.count - 1)];
      }
      Pizza *newPizza = [[Pizza alloc] initWithSize:size toppings:topping];
      [newPizza pintPizza];
      NSString *userinput = [ic inputForPrompt:@"Which manager do you like? 1: New Manager, 2: SecondManager, 3: I don't like both of them."];
      if ([userinput isEqualToString:@"1"]) {
        [pizzaArray addObject:[kc1 makePizza:newPizza]];
      } else if ([userinput isEqualToString:@"2"]) {
        [pizzaArray addObject:[kc2 makePizza:newPizza]];
      } else if ([userinput isEqualToString:@"3"]) {
        [pizzaArray addObject:newPizza];
      } else {
        NSLog(@"Not available.");
      }
      NSString *userinput2 = [ic inputForPrompt:@"Do you want to order more pizza? 1: Yes, 2: No"];
      if ([userinput2 isEqualToString:@"2"]) {
        NSLog(@"See you");
        break;
      }
      RealManager *rc = [[RealManager alloc] initWithPizza:pizzaArray];
      [rc deliverPizza:pizzaArray];
      
    }
    return 0;
  }
}

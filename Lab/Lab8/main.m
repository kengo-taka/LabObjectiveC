//
//  main.m
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/02.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
                
        while (TRUE) {

            NSLog(@"> ");
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
          break;
    }
    return 0;
}
}

//
//  Pizza.m
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/02.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype) initWithSize: (NSString*) size toppings: (NSArray *) toppings {
    self = [self init];
    self.size = size;
    self.toppings = toppings;
    return self;
}

- (void)pintPizza
{
  NSString *toppingString = [self.toppings componentsJoinedByString:@", "];
  NSLog(@"Your Pizza is %@ size with %@!",self.size, toppingString);
}

@end


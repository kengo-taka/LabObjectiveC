//
//  main.m
//  Lab9
//
//  Created by Takamiya Kengo on 2021/03/02.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "AnotherCook.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        // set truckA and truckB's delegate to your new instance.
      Cook *cook1 = [Cook new];
      truckA.delegate = cook1;
      AnotherCook *cook2 = [AnotherCook new];
      truckB.delegate = cook2;
      
      
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}

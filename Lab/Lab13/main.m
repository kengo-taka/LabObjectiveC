//
//  main.m
//  Lab13
//
//  Created by Takamiya Kengo on 2021/02/28.
//

#import <Foundation/Foundation.h>
#import "NSString+Pig.h"
int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSString *greeting = @"chw are you";
    NSLog(@"%@",[greeting stringByPigLatinization]);
  }
  return 0;
}

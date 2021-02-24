//
//  main.m
//  Lab2
//
//  Created by Takamiya Kengo on 2021/02/23.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    Box *cv = [[Box alloc] initWithHeight:10 Width:10 Length:15];

    NSLog(@"%d",[cv calculateVolume]);
    [cv calculateHowManyFil:(100)];

  }
  return 0;
}

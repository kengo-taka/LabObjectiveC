//
//  NSString+Pig.m
//  Lab13
//
//  Created by Takamiya Kengo on 2021/02/28.
//

#import "NSString+Pig.h"
@implementation NSString (Pig)

-(NSString*)stringByPigLatinization {
  NSMutableArray *array = [[self lowercaseString] componentsSeparatedByString:@" "];
  NSMutableArray *clusters = @[@"ch", @"sh", @"sm", @"st", @"th", @"ps", @"ph", @"pl", @"gl"];
  for (int i = 0; i < array.count; i++){
    for (int j = 0; j < clusters.count; j++) {
      if ([[[array objectAtIndex:i] substringToIndex:2] isEqualToString:[clusters objectAtIndex:j]]){
        [array replaceObjectAtIndex:i withObject:[[[[array objectAtIndex:i] substringFromIndex:2] stringByAppendingString:[clusters objectAtIndex:j]] stringByAppendingString:@"ay"]];
        break;
      } else {
        [array replaceObjectAtIndex:i withObject: [[array objectAtIndex:i]  stringByAppendingString:@"ay"]];
        break;
      }
    }
  }
  NSString *pigstring = @"";
  for (int i = 0; i < array.count; i++){
    pigstring = [[pigstring stringByAppendingString:[array objectAtIndex:i] ] stringByAppendingString:@" "];
  }
  [pigstring stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[[pigstring substringToIndex:1] uppercaseString]];
  return pigstring;
}

@end

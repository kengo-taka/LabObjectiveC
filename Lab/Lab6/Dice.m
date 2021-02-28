//
//  Dice.m
//  Lab6
//
//  Created by Takamiya Kengo on 2021/02/27.
//

#import "Dice.h"

@implementation Dice

-(instancetype)initWithNumber:(NSInteger)number
{
  self = [super init];
  if (self) {
    _number = number;
    _hold = @"f";
  }
  return self;
}
-(NSString*)displayDice
{
  switch (_number) {
    case 1:
      if ([self.hold  isEqual: @"f"])
      {
        return @"⚀";
      }
      else {
        return @"[⚀]";
      }
    case 2:
      if ([self.hold  isEqual: @"f"])
      {
        return @"⚁";
      }
      else {
        return @"[⚁]";
      }
    case 3:
      if ([self.hold  isEqual: @"f"])
      {
        return @"⚂";
      }
      else {
        return @"[⚂]";
      }
    case 4:
      if ([self.hold  isEqual: @"f"])
      {
        return @"⚃";
      }
      else {
        return @"[⚃]";
      }
    case 5:
      if ([self.hold  isEqual: @"f"])
      {
        return @"⚄";
      }
      else {
        return @"[⚄]";
      }
    case 6:
      if ([self.hold  isEqual: @"f"])
      {
        return @"⚅";
      }
      else {
        return @"[⚅]";
      }
    default:
      return nil;
      break;
  }
}
@end



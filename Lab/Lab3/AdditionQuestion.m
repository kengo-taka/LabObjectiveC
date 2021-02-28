//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Takamiya Kengo on 2021/02/24.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)initWithQ:(NSString*) question Answer:(int) answer
{
  self = [super init];
  if (self) {

    _question = question;
    _answer = answer;
    _startTime = [NSDate date];
    
  }
  return self;
}
//overriding getter
- (NSInteger)answer {
  _endTime = [NSDate date];
  return _answer;
}

- (NSTimeInterval)answerTime
{
  return [_endTime timeIntervalSinceDate:_startTime];
}


@end

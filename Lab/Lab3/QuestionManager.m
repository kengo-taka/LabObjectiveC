//
//  QuestionManager.m
//  Lab3
//
//  Created by Takamiya Kengo on 2021/02/26.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype)initWithArray:(NSMutableArray*) questions
{
  self = [super init];
  if (self) {

    _questions = questions;
    
  }
  return self;
}
@end

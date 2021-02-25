//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Takamiya Kengo on 2021/02/24.
//

#import "AdditionQuestion.h"

@interface AdditionQuestion()
@property (assign) NSString* question;
@property (assign) NSInteger answer;


//-(void) sayQuestion;
@end
@implementation AdditionQuestion
- (instancetype)initWithQ:(NSString*) question Answer:(int) answer
{
  self = [super init];
  if (self) {
//    int randInt1 = arc4random_uniform(91) + 10;
//    int randInt2 = arc4random_uniform(91) + 10;
//    NSString *str1 = [NSString stringWithFormat:@"%d", randInt1];
//    NSString *str2 = [NSString stringWithFormat:@"%d", randInt2];
//    question = [NSString stringWithFormat:@"%@ + %@ ?",str1,str2];
//    answer = randInt1 + randInt2;
    _question = question;
    _answer = answer;
  }
  return self;
}
//
//-(void) sayQuestion
//{
//  NSLog(@"%@",_question);
//}


@end

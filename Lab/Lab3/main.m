//
//  main.m
//  Lab3
//
//  Created by Takamiya Kengo on 2021/02/24.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "QuestionManager.h"
// prompts the message and takes user input from the command line (C) and returns as NSString
NSString * getUserInput(int maxLength, NSString *prompt) {
  if (maxLength < 1) {
    maxLength = 255;
  }
  NSLog(@"%@ ", prompt);
  char inputChars[maxLength];
  char *result = fgets(inputChars, maxLength, stdin);
  if (result != NULL) {
 
    NSString *objCString = [NSString stringWithUTF8String:inputChars];
    NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedInput = [objCString stringByTrimmingCharactersInSet: whitespaces];
    return trimmedInput;
  }
  return NULL;
}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    QuestionManager *array = [QuestionManager new];
    
    while (YES) {
      NSString *strInput = getUserInput(255, @"\nMATH! Push Enter key or 'q' to quit): ");
      if ([strInput isEqualToString:@"q"]) { break; }
//      NSInteger answer = 0;
      NSInteger totalQ = 0;
      NSInteger right = 0;
      NSInteger wrong = 0;
//      NSString *question = @"";
      NSDate *startTime = [NSDate date];
      while (YES) {
        int randInt1 = arc4random_uniform(91) + 10;
        int randInt2 = arc4random_uniform(91) + 10;
        int randInt3 = arc4random_uniform(3);
        NSInteger answer = 0;
        NSString *str1 = @"";
        NSString *str2 = @"";
        NSString *question = @"";
        NSString *answerString = @"";
        switch (randInt3) {
          case 0 :
          answer = randInt1 + randInt2;
          str1 = [NSString stringWithFormat:@"%d", randInt1];
          str2 = [NSString stringWithFormat:@"%d", randInt2];
          question = [NSString stringWithFormat:@"%@ + %@ ?",str1,str2];
          answerString = [NSString stringWithFormat:@"%ld",(long)answer];
          case 1 :
          answer = randInt1 - randInt2;
          str1 = [NSString stringWithFormat:@"%d", randInt1];
          str2 = [NSString stringWithFormat:@"%d", randInt2];
          question = [NSString stringWithFormat:@"%@ - %@ ?",str1,str2];
          answerString = [NSString stringWithFormat:@"%ld",(long)answer];
          case 2 :
          answer = randInt1 * randInt2;
          str1 = [NSString stringWithFormat:@"%d", randInt1];
          str2 = [NSString stringWithFormat:@"%d", randInt2];
          question = [NSString stringWithFormat:@"%@ * %@ ?",str1,str2];
          answerString = [NSString stringWithFormat:@"%ld",(long)answer];
        }
//
//        NSString *str1 = [NSString stringWithFormat:@"%d", randInt1];
//        NSString *str2 = [NSString stringWithFormat:@"%d", randInt2];
//        NSString *question = [NSString stringWithFormat:@"%@ + %@ ?",str1,str2];
//        NSInteger answer = randInt1 + randInt2;
//        NSString *answerString = [NSString stringWithFormat:@"%ld",(long)answer];
        AdditionQuestion *aq = [[AdditionQuestion alloc] initWithQ: question Answer:answer];
        NSString *option = getUserInput(10, question);
        if ([option isEqualToString:answerString]) {
          totalQ += 1;
          right += 1;
          NSLog(@"Right");
          NSInteger ratio = (right / totalQ) * 100;
          NSLog(@"score: %ld right, %ld wrong ----- %ld%%",(long)right,(long)wrong,(long)ratio);
          NSDate *endTime = [NSDate date];
          NSString *totalTime = [NSString stringWithFormat:@"%d",(int)[endTime timeIntervalSinceDate:startTime]];
          NSInteger *average = (int)[endTime timeIntervalSinceDate:startTime] / totalQ;
          NSString *averageString = [NSString stringWithFormat:@"%d",average];
          NSLog(@"total time : %@s, average time: %@s",totalTime,averageString);
        } else if ([option isEqualToString:@"q"]) {
          NSInteger ratio = (right / totalQ) * 100;
          NSLog(@"score: %ld right, %ld wrong ----- %ld%%",(long)right,(long)wrong,(long)ratio);
          NSDate *endTime = [NSDate date];
          NSString *totalTime = [NSString stringWithFormat:@"%d",(int)[endTime timeIntervalSinceDate:startTime]];
          NSInteger *average = (int)[endTime timeIntervalSinceDate:startTime] / totalQ;
          NSString *averageString = [NSString stringWithFormat:@"%d",average];
          NSLog(@"total time : %@s, average time: %@s",totalTime,averageString);
          break;
        } else {
          NSLog(@"Wrong");
          totalQ += 1;
          wrong += 1;
          NSInteger ratio = (right / totalQ) * 100;
          NSLog(@"score: %ld right, %ld wrong ----- %ld%%",(long)right,(long)wrong,(long)ratio);
          NSDate *endTime = [NSDate date];
          NSString *totalTime = [NSString stringWithFormat:@"%d",(int)[endTime timeIntervalSinceDate:startTime]];
          NSInteger *average = (int)[endTime timeIntervalSinceDate:startTime] / totalQ;
          NSString *averageString = [NSString stringWithFormat:@"%d",average];
          NSLog(@"total time : %@s, average time: %@s",totalTime,averageString);
        }
      }
    }

  }
  return 0;
}

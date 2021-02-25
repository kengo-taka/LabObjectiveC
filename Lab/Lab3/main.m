//
//  main.m
//  Lab3
//
//  Created by Takamiya Kengo on 2021/02/24.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

// prompts the message and takes user input from the command line (C) and returns as NSString
NSString * getUserInput(int maxLength, NSString *prompt) {
  if (maxLength < 1) {
    maxLength = 255;
  }
  NSLog(@"%@ ", prompt);
  char inputChars[maxLength]; // create a char array of size maxLength
  char *result = fgets(inputChars, maxLength, stdin);
  if (result != NULL) {
    // 1. initialize NSString from c-string (char array)
    NSString *objCString = [NSString stringWithUTF8String:inputChars]; // NSString.stringWithUTF8String(inputChars);
    // 2. trim the input (remove all whitespaces)
    NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedInput = [objCString stringByTrimmingCharactersInSet: whitespaces];
    return trimmedInput;
  }
  return NULL;
}

// main is the starting point of the program
// C, Objective-C
// C String vs NSString
int main(int argc, const char * argv[]) {
  @autoreleasepool {
 
    
    while (YES) {
      NSString *strInput = getUserInput(255, @"\nMATH! Push Enter key or 'q' to quit): ");
      if ([strInput isEqualToString:@"q"]) { break; }
      
      NSInteger totalQ = 0;
      NSInteger right = 0;
      NSInteger wrong = 0;
      while (YES) {
        int randInt1 = arc4random_uniform(91) + 10;
        int randInt2 = arc4random_uniform(91) + 10;
        NSString *str1 = [NSString stringWithFormat:@"%d", randInt1];
        NSString *str2 = [NSString stringWithFormat:@"%d", randInt2];
        NSString *question = [NSString stringWithFormat:@"%@ + %@ ?",str1,str2];
        NSInteger answer = randInt1 + randInt2;
        NSString *answerString = [NSString stringWithFormat:@"%ld",(long)answer];
        AdditionQuestion *aq = [[AdditionQuestion alloc] initWithQ: question Answer:answer];
        NSString *option = getUserInput(10, question);
        if ([option isEqualToString:answerString]) {
          NSLog(@"Right");
          totalQ += 1;
          right += 1;
        } else if ([option isEqualToString:@"q"]) {
          NSInteger ratio = (right / totalQ) * 100;
          NSLog(@"score: %ld right, %ld wrong ----- %ld%%",(long)right,(long)wrong,(long)ratio);
          break;
        } else {
          NSLog(@"Wrong");
          totalQ += 1;
          wrong += 1;
        }
      }
    }

  }
  return 0;
}

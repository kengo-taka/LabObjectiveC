//
//  InputCollector.m
//  Lab6
//
//  Created by Takamiya Kengo on 2021/02/26.
//

#import "InputCollector.h"

@interface InputCollector()
-(NSString*)inputForPrompt:(NSString*)promptString;


@end
@implementation InputCollector

- (instancetype)init;
{
  self = [super init];
  if (self) {

  }
  return self;
}

-(NSString*)inputForPrompt:(NSString*)promptString
{
   NSInteger maxLength = 255;
  NSLog(@"%@ ", promptString);
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



@end


//
//  main.m
//  Lab4
//
//  Created by Takamiya Kengo on 2021/02/25.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"


int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSMutableArray *array = [NSMutableArray array];
    ContactList *cl = [[ContactList alloc] initWithArray:array];
    //    NSMutableArray *cl = [NSMutableArray arrayWithObjects:nil];
    InputCollector *ic = [[InputCollector alloc] init];
    while (YES) {
      NSString* userinput = [ic inputForPrompt:@"What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application"];
      if ([userinput isEqualToString:@"new"]) {
        NSString* userName = [ic inputForPrompt:@"What is your name?"];
        NSString* userEmail = [ic inputForPrompt:@"What is your email?"];
        Contact *new = [[Contact alloc] initWithName:userName Email:userEmail];
        [cl addContact:new];
      } else if ([userinput isEqualToString:@"list"]) {
        [cl printAll];
      } else if ([userinput isEqualToString:@"quit"]) {
        NSLog(@"See you");
        break;
      } else {
        NSLog(@"Not available.");
      }
    }
  }
  return 0;
}

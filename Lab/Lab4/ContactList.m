//
//  ContactList.m
//  Lab4
//
//  Created by Takamiya Kengo on 2021/02/25.
//

#import "ContactList.h"
@interface ContactList()
//@property (nonatomic) NSMutableArray* array;
-(void)addContact:(Contact *)newContact;
-(void)printAll;


@end
@implementation ContactList
- (instancetype)initWithArray:(NSMutableArray*) array
{
  self = [super init];
  if (self) {
    _array = array;
  }
  return self;
}

-(void)addContact:(Contact *)newContact
{
  [self.array addObject: newContact];
}
-(void)printAll
{
  if (self.array.count > 0){
  for (int i = 0; i < [self.array count]; i++) {
    NSLog(@"Name is %@ , Email is %@ ", [self.array[i] name],[self.array[i] email]);
}
  } else {
    NSLog(@"There is no Contact");
  }
}

@end


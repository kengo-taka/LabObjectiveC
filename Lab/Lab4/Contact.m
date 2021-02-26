//
//  Contact.m
//  Lab4
//
//  Created by Takamiya Kengo on 2021/02/25.
//

#import "Contact.h"

@interface Contact()
@property (nonatomic) NSString* name;
@property (nonatomic) NSString* email;

@end
@implementation Contact
- (instancetype)initWithName:(NSString*) name Email:(NSString*) email
{
  self = [super init];
  if (self) {
    _name = name;
    _email = email;
  }
  return self;
}


@end

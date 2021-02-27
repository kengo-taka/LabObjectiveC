//
//  ContactList.h
//  Lab4
//
//  Created by Takamiya Kengo on 2021/02/25.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN
@interface ContactList : NSObject
@property  NSMutableArray *array;
- (instancetype)initWithArray:(NSMutableArray*) array;
-(void)addContact:(Contact *)newContact;
-(void)printAll;
@end

NS_ASSUME_NONNULL_END

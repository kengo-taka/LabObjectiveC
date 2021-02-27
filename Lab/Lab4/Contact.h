//
//  Contact.h
//  Lab4
//
//  Created by Takamiya Kengo on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface Contact : NSObject
@property  NSString *name;
@property  NSString *email;
- (instancetype)initWithName:(NSString*) name Email:(NSString*) email;

@end

NS_ASSUME_NONNULL_END

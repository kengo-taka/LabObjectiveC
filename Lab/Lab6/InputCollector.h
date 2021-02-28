//
//  InputCollector.h
//  Lab6
//
//  Created by Takamiya Kengo on 2021/02/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject
- (instancetype)init;
-(NSString*)inputForPrompt:(NSString*)promptString;

@end

NS_ASSUME_NONNULL_END

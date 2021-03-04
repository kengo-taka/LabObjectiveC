//
//  inputCollector.h
//  Lab10
//
//  Created by Takamiya Kengo on 2021/03/03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface inputCollector : NSObject
- (instancetype)init;
-(NSString*)inputForPrompt:(NSString*)promptString;

@end

NS_ASSUME_NONNULL_END

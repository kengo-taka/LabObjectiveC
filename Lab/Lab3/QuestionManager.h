//
//  QuestionManager.h
//  Lab3
//
//  Created by Takamiya Kengo on 2021/02/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property NSMutableArray* questions;
- (instancetype)initWithArray:(NSMutableArray*) questions;
@end

NS_ASSUME_NONNULL_END

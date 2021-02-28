//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Takamiya Kengo on 2021/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property (assign) NSString* question;
@property (nonatomic, assign) NSInteger answer;
@property (assign) NSDate* startTime;
@property (assign) NSDate* endTime;


- (instancetype)initWithQ:(NSString*) question Answer:(int) answer;
////overriding getter
//- (NSInteger)answer {
//  _endTime = [NSDate date];
//  return _answer;
//}
@end

NS_ASSUME_NONNULL_END

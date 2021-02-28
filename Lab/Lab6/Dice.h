//
//  Dice.h
//  Lab6
//
//  Created by Takamiya Kengo on 2021/02/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject
@property  (nonatomic)NSInteger number;
@property  NSString *hold;
- (instancetype)initWithNumber:(NSInteger) number;
-(NSString*)displayDice;
@end

NS_ASSUME_NONNULL_END

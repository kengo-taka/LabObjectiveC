//
//  Box.h
//  Lab
//
//  Created by Takamiya Kengo on 2021/02/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

- (instancetype)initWithHeight:(int) height Width:(int) width Length:(int) length;
- (int) calculateVolume;
-(void) calculateHowManyFil:(int) volume;


@end

NS_ASSUME_NONNULL_END

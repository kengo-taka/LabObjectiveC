//
//  RealManager.h
//  Lab8
//
//  Created by Takamiya Kengo on 2021/03/04.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

//@interface RealManager ()
//
//@end

@interface RealManager : NSObject
-(instancetype)initWithPizza:(NSMutableArray *)pizzaarray;
@property NSMutableArray* pizzaarray;
-(void)deliverPizza:(NSMutableArray*)pizza;

@end

NS_ASSUME_NONNULL_END

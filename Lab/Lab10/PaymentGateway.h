//
//  PaymentGateway.h
//  Lab10
//
//  Created by Takamiya Kengo on 2021/03/03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmout:(NSInteger) number;
-(BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<PaymentDelegate> delegate;
-(void)printProcess:(NSInteger) money;
@end

NS_ASSUME_NONNULL_END

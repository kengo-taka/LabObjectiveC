//
//  Box.m
//  Lab
//
//  Created by Takamiya Kengo on 2021/02/23.
//

#import "Box.h"

@interface Box()  
@property (assign) float height;
@property (assign) float width;
@property (assign) float length;
- (int) calculateVolume;
-(void) calculateHowManyFil:(int) volume;
@end
@implementation Box

- (instancetype)initWithHeight:(int) height Width:(int) width Length:(int) length
{
  self = [super init];
  if (self) {
    _height = height;
    _width = width;
    _length = length;
  }
  return self;
}

- (int) calculateVolume
{
  return _height * _width * _length;
}
-(void) calculateHowManyFil:(int) volume
{
  if (volume == self.calculateVolume)
  {
    NSLog(@"You can fit one box inside the other");
  } else if (volume > self.calculateVolume)
  {
    int howMany = volume / self.calculateVolume;
    NSLog(@"You can fit %d boxes inside the other",howMany);
  } else
  {
    int howMany = self.calculateVolume / volume;
    NSLog(@"You can fit %d boxes inside the other",howMany);
  }
}


@end

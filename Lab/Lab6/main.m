//
//  main.m
//  Lab6
//
//  Created by Takamiya Kengo on 2021/02/26.
//

//⚀ ⚁ ⚂ ⚃ ⚄ ⚅

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Dice.h"



int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSMutableArray *array = [NSMutableArray new];
    InputCollector *ic = [[InputCollector alloc] init];
    int randInt1 = arc4random_uniform(6)+1;
    int randInt2 = arc4random_uniform(6)+1;
    int randInt3 = arc4random_uniform(6)+1;
    int randInt4 = arc4random_uniform(6)+1;
    int randInt5 = arc4random_uniform(6)+1;
    
    Dice *dice1 = [[Dice alloc] initWithNumber:randInt1];
    Dice *dice2 = [[Dice alloc] initWithNumber:randInt2];
    Dice *dice3 = [[Dice alloc] initWithNumber:randInt3];
    Dice *dice4 = [[Dice alloc] initWithNumber:randInt4];
    Dice *dice5 = [[Dice alloc] initWithNumber:randInt5];
    
    [array addObject:dice1];
    [array addObject:dice2];
    [array addObject:dice3];
    [array addObject:dice4];
    [array addObject:dice5];
    
    NSInteger remainingRoll = 4;
    NSInteger score = 0;
    NSLog(@"Remaining Rolls : %ld",(long)remainingRoll);
    for (int i = 0; i < 5; i++)
    {
      if  ([[array[i] hold] isEqualToString: @"t"])
      {
        score = [array[i] number];
      }
    }
    NSLog(@"Score : %ld", (long)score);
    NSLog(@"%@ %@ %@ %@ %@",[array[0] displayDice],[array[1] displayDice],[array[2] displayDice],[array[3] displayDice],[array[4] displayDice]);
    
    while(YES) {
      NSString* userinput = [ic inputForPrompt:@"\n'roll' to roll the dice\n'hold' to hold a dice\n'reset' to roll the dice\n'done' to end the game\n'display' to show current states"];
      score = 0;
      if ([userinput isEqualToString:@"roll"])
      {
        remainingRoll -= 1;
        if (remainingRoll == 0)
        {
          for (int i = 0; i < 5; i++)
          {
            score = score + [array[i] number];
          }
          NSLog(@"Game end");
          NSLog(@"Score : %ld", (long)score);
          NSLog(@"Score : %ld", (long)score);
          NSLog(@"Remaining Rolls : %ld",(long)remainingRoll);
          NSLog(@"%@ %@ %@ %@ %@",[array[0] displayDice],[array[1] displayDice],[array[2] displayDice],[array[3] displayDice],[array[4] displayDice]);
          break;
        }
        for (int i = 0; i < 5; i++)
        {
          if ([[array[i] hold] isEqualToString: @"f"])
          {
            int randInt = arc4random_uniform(6)+1;
            [array[i] setValue:[NSNumber numberWithInt: randInt] forKey:@"number"];
          }
        }
        for (int i = 0; i < 5; i++)
        {
          if  ([[array[i] hold] isEqualToString: @"t"])
          {
            score = score + [array[i] number];
          }
        }
        NSLog(@"Score : %ld", (long)score);
        NSLog(@"Remaining Rolls : %ld",(long)remainingRoll);
        NSLog(@"%@ %@ %@ %@ %@",[array[0] displayDice],[array[1] displayDice],[array[2] displayDice],[array[3] displayDice],[array[4] displayDice]);
        
      } else if ([userinput isEqualToString:@"hold"])
      {
        NSString* userinput = [ic inputForPrompt:@"\nEnter the number of the dice"];
        if ([userinput isEqualToString:@"1"])
        {
          [array[0]setValue:@"t" forKey:@"hold"];
          for (int i = 0; i < 5; i++)
          {
            if  ([[array[i] hold] isEqualToString: @"t"])
            {
              score = score + [array[i] number];
            }
          }
          NSLog(@"Score : %ld", (long)score);
          NSLog(@"Remaining Rolls : %ld",(long)remainingRoll);
          NSLog(@"%@ %@ %@ %@ %@",[array[0] displayDice],[array[1] displayDice],[array[2] displayDice],[array[3] displayDice],[array[4] displayDice]);
        } else if ([userinput isEqualToString:@"2"])
        {
          [array[1]setValue:@"t" forKey:@"hold"];
          for (int i = 0; i < 5; i++)
          {
            if  ([[array[i] hold] isEqualToString: @"t"])
            {
              score = score + [array[i] number];
            }
          }
          NSLog(@"Score : %ld", (long)score);
          NSLog(@"Remaining Rolls : %ld",(long)remainingRoll);
          NSLog(@"%@ %@ %@ %@ %@",[array[0] displayDice],[array[1] displayDice],[array[2] displayDice],[array[3] displayDice],[array[4] displayDice]);
        } else if ([userinput isEqualToString:@"3"])
        {
          [array[2]setValue:@"t" forKey:@"hold"];
          for (int i = 0; i < 5; i++)
          {
            if  ([[array[i] hold] isEqualToString: @"t"])
            {
              score = score + [array[i] number];
            }
          }
          NSLog(@"Score : %ld", (long)score);
          NSLog(@"Remaining Rolls : %ld",(long)remainingRoll);
          NSLog(@"%@ %@ %@ %@ %@",[array[0] displayDice],[array[1] displayDice],[array[2] displayDice],[array[3] displayDice],[array[4] displayDice]);
        } else if ([userinput isEqualToString:@"4"])
        {
          [array[3]setValue:@"t" forKey:@"hold"];
          for (int i = 0; i < 5; i++)
          {
            if  ([[array[i] hold] isEqualToString: @"t"])
            {
              score = score + [array[i] number];
            }
          }
          NSLog(@"Score : %ld", (long)score);
          NSLog(@"Remaining Rolls : %ld",(long)remainingRoll);
          NSLog(@"%@ %@ %@ %@ %@",[array[0] displayDice],[array[1] displayDice],[array[2] displayDice],[array[3] displayDice],[array[4] displayDice]);
        } else if ([userinput isEqualToString:@"5"])
        {
          [array[4]setValue:@"t" forKey:@"hold"];
          for (int i = 0; i < 5; i++)
          {
            if  ([[array[i] hold] isEqualToString: @"t"])
            {
              score = score + [array[i] number];
            }
          }
          NSLog(@"Score : %ld", (long)score);
          NSLog(@"Remaining Rolls : %ld",(long)remainingRoll);
          NSLog(@"%@ %@ %@ %@ %@",[array[0] displayDice],[array[1] displayDice],[array[2] displayDice],[array[3] displayDice],[array[4] displayDice]);
        } else {
          NSLog(@"Wrong number");
        }
      } else if ([userinput isEqualToString:@"reset"])
      {
        for (int i = 0; i < 5; i++)
        {
          if (![[array[i] hold] isEqualToString: @"f"])
          {
            [array[i] setValue:@"f" forKey:@"hold"];
          }
        }
        for (int i = 0; i < 5; i++)
        {
          if  ([[array[i] hold] isEqualToString: @"t"])
          {
            score = score + [array[i] number];
          }
        }
        NSLog(@"Score : %ld", (long)score);
        NSLog(@"Remaining Rolls : %ld",(long)remainingRoll);
        NSLog(@"%@ %@ %@ %@ %@",[array[0] displayDice],[array[1] displayDice],[array[2] displayDice],[array[3] displayDice],[array[4] displayDice]);
        
      } else if ([userinput isEqualToString:@"display"])
      {
        for (int i = 0; i < 5; i++)
        {
          if  ([[array[i] hold] isEqualToString: @"t"])
          {
            score = score + [array[i] number];
          }
        }
        NSLog(@"Score : %ld", (long)score);
        NSLog(@"Remaining Rolls : %ld",(long)remainingRoll);
        NSLog(@"%@ %@ %@ %@ %@",[array[0] displayDice],[array[1] displayDice],[array[2] displayDice],[array[3] displayDice],[array[4] displayDice]);
      } else if  ([userinput isEqualToString:@"done"])
      {
        for (int i = 0; i < 5; i++)
        {
          score = score + [array[i] number];
        }
        NSLog(@"Game end");
        NSLog(@"Score : %ld", (long)score);
        NSLog(@"Score : %ld", (long)score);
        NSLog(@"Remaining Rolls : %ld",(long)remainingRoll);
        NSLog(@"%@ %@ %@ %@ %@",[array[0] displayDice],[array[1] displayDice],[array[2] displayDice],[array[3] displayDice],[array[4] displayDice]);
        break;
      }
    }
  }
  return 0;
}

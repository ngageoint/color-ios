//
//  CLRTestUtils.m
//  color-ios
//
//  Created by Brian Osborn on 7/18/22.
//  Copyright © 2022 NGA. All rights reserved.
//

#import "CLRTestUtils.h"

#define ARC4RANDOM_MAX      0x100000000

@implementation CLRTestUtils

+(void)assertNil:(id) value{
    if(value != nil){
        [NSException raise:@"Assert Nil" format:@"Value is not nil: %@", value];
    }
}

+(void)assertNotNil:(id) value{
    if(value == nil){
        [NSException raise:@"Assert Not Nil" format:@"Value is nil: %@", value];
    }
}

+(void)assertTrue: (BOOL) value{
    if(!value){
        [NSException raise:@"Assert True" format:@"Value is false"];
    }
}

+(void)assertFalse: (BOOL) value{
    if(value){
        [NSException raise:@"Assert False" format:@"Value is true"];
    }
}

+(void)assertEqualWithValue:(NSObject *) value andValue2: (NSObject *) value2{
    if(value == nil){
        if(value2 != nil){
            [NSException raise:@"Assert Equal" format:@"Value 1: '%@' is not equal to Value 2: '%@'", value, value2];
        }
    } else if(![value isEqual:value2]){
        [NSException raise:@"Assert Equal" format:@"Value 1: '%@' is not equal to Value 2: '%@'", value, value2];
    }
}

+(void)assertEqualDecimalNumberWithValue:(NSDecimalNumber *) value andValue2: (NSDecimalNumber *) value2 andDelta: (double) delta{
    if(value == nil){
        if(value2 != nil){
            [NSException raise:@"Assert Decimal Number Equal" format:@"Value 1: '%@' is not equal to Value 2: '%@'", value, value2];
        }
    } else{
        [self assertEqualDoubleWithValue:[value doubleValue] andValue2:[value2 doubleValue] andDelta:delta];
    }
}

+(void)assertEqualBoolWithValue:(BOOL) value andValue2: (BOOL) value2{
    if(value != value2){
        [NSException raise:@"Assert Equal BOOL" format:@"Value 1: '%d' is not equal to Value 2: '%d'", value, value2];
    }
}

+(void)assertEqualIntWithValue:(int) value andValue2: (int) value2{
    if(value != value2){
        [NSException raise:@"Assert Equal int" format:@"Value 1: '%d' is not equal to Value 2: '%d'", value, value2];
    }
}

+(void)assertEqualUnsignedIntWithValue:(unsigned int) value andValue2: (unsigned int) value2{
    if(value != value2){
        [NSException raise:@"Assert Equal unsigned int" format:@"Value 1: '%d' is not equal to Value 2: '%d'", value, value2];
    }
}

+(void)assertEqualUnsignedLongWithValue:(unsigned long) value andValue2: (unsigned long) value2{
    if(value != value2){
        [NSException raise:@"Assert Equal unsigned long" format:@"Value 1: '%lu' is not equal to Value 2: '%lu'", value, value2];
    }
}

+(void)assertEqualDoubleWithValue:(double) value andValue2: (double) value2{
    if(value != value2){
        [NSException raise:@"Assert Equal double" format:@"Value 1: '%f' is not equal to Value 2: '%f'", value, value2];
    }
}

+(void)assertEqualDoubleWithValue:(double) value andValue2: (double) value2 andDelta: (double) delta{
    if(fabsl(value - value2) > delta){
        [NSException raise:@"Assert Equal double" format:@"Value 1: '%f' is not equal to Value 2: '%f' within delta: '%f'", value, value2, delta];
    }
}

+(BOOL) equalDoubleWithValue:(double) value andValue2: (double) value2 andDelta: (double) delta{
    return fabsl(value - value2) <= delta;
}

+(void)assertEqualDoubleWithValue:(double) value andValue2: (double) value2 andPercentage: (double) percentage{
    if(fabsl(value - value2) > percentage * MAX(fabsl(value), fabsl(value2))){
        [NSException raise:@"Assert Equal double" format:@"Value 1: '%f' is not equal to Value 2: '%f' within percentage: '%f'", value, value2, percentage];
    }
}

+(void)assertEqualDataWithValue:(NSData *) value andValue2: (NSData *) value2{
    if(value == nil){
        if(value2 != nil){
            [NSException raise:@"Assert Data Equal" format:@"Value 1: '%@' is not equal to Value 2: '%@'", value, value2];
        }
    } else if(![value isEqualToData:value2]){
        [NSException raise:@"Assert Data Equal" format:@"Value 1: '%@' is not equal to Value 2: '%@'", value, value2];
    }
}

+(void)fail:(NSString *) message{
    [NSException raise:@"Test Failure" format:@"%@", message];
}

+(NSDecimalNumber *) roundDouble: (double) value{
    return [self roundDouble:value withScale:1];
}

+(NSDecimalNumber *) roundDouble: (double) value withScale: (int) scale{
    NSDecimalNumberHandler *rounder = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:scale raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
    return [[[NSDecimalNumber alloc] initWithDouble:value] decimalNumberByRoundingAccordingToBehavior:rounder];
}

+(int) randomIntLessThan: (int) max{
    return arc4random() % max;
}

+(double) randomDouble{
    return ((double)arc4random() / ARC4RANDOM_MAX);
}

+(double) randomDoubleLessThan: (double) max{
    return [self randomDouble] * max;
}

+(BOOL) coinFlip{
    return [self randomDouble] < .5;
}

@end

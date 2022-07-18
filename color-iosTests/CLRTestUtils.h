//
//  CLRTestUtils.h
//  color-ios
//
//  Created by Brian Osborn on 7/18/22.
//  Copyright © 2022 NGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CLRTestUtils : NSObject

+(void)assertNil:(id) value;

+(void)assertNotNil:(id) value;

+(void)assertTrue: (BOOL) value;

+(void)assertFalse: (BOOL) value;

+(void)assertEqualWithValue:(NSObject *) value andValue2: (NSObject *) value2;

+(void)assertEqualDecimalNumberWithValue:(NSDecimalNumber *) value andValue2: (NSDecimalNumber *) value2 andDelta: (double) delta;

+(void)assertEqualBoolWithValue:(BOOL) value andValue2: (BOOL) value2;

+(void)assertEqualIntWithValue:(int) value andValue2: (int) value2;

+(void)assertEqualUnsignedIntWithValue:(unsigned int) value andValue2: (unsigned int) value2;

+(void)assertEqualUnsignedLongWithValue:(unsigned long) value andValue2: (unsigned long) value2;

+(void)assertEqualDoubleWithValue:(double) value andValue2: (double) value2;

+(void)assertEqualDoubleWithValue:(double) value andValue2: (double) value2 andDelta: (double) delta;

+(BOOL) equalDoubleWithValue:(double) value andValue2: (double) value2 andDelta: (double) delta;

+(void)assertEqualDoubleWithValue:(double) value andValue2: (double) value2 andPercentage: (double) percentage;

+(void)assertEqualDataWithValue:(NSData *) value andValue2: (NSData *) value2;

+(void)fail:(NSString *) message;

+(NSDecimalNumber *) roundDouble: (double) value;

+(NSDecimalNumber *) roundDouble: (double) value withScale: (int) scale;

+(int) randomIntLessThan: (int) max;

+(double) randomDouble;

+(double) randomDoubleLessThan: (double) max;

+(BOOL) coinFlip;

@end

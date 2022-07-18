//
//  CLRColorUtilsTest.m
//  color-iosTests
//
//  Created by Brian Osborn on 7/18/22.
//  Copyright © 2022 NGA. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CLRTestUtils.h"
#import "CLRColorUtils.h"

@interface CLRColorUtilsTest : XCTestCase

@end

/**
 * Color Utils Test
 */
@implementation CLRColorUtilsTest

/**
 * Test color valid checks
 */
- (void)testValid {

    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"000000"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"#000000"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"00000000"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"#00000000"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"000"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"#000"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"0000"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"#0000"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"FFFFFF"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"#FFFFFF"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"FFFFFFFF"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"#ffffffff"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"FfF"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"#fFf"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"ffff"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHex:@"#fFfF"]];
    
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:nil]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@""]];
   
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"00000"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"0000000"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#00000"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#0000000"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"000000000"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#000000000"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"00"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#00"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"FFFFF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"FFFFFFF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#FFFFF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#FFFFFFF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"FFFFFFFFF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#FFFFFFFFF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"FF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#FF"]];
  
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"G00000"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#00000H"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"000i0000"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#0000J000"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"00K"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#0l0"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"0M00"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#n000"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"FFGFFF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#FFFHFF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"iFFFFFFF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#FFFFFFFj"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"FFK"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#LFF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"FFmF"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHex:@"#FnFF"]];
    
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHexSingle:@"00"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHexSingle:@"FF"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHexSingle:@"ff"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHexSingle:@"aB"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHexSingle:@"C5"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHexSingle:@"d"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHexSingle:@"E"]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHexSingle:@"4"]];
    
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHexSingle:nil]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHexSingle:@""]];
    
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHexSingle:@"000"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHexSingle:@"0ff"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHexSingle:@"G0"]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHexSingle:@"#00"]];
    
    [CLRTestUtils assertFalse:[CLRColorUtils isValidRGB:-1]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidRGB:0]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidRGB:128]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidRGB:255]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidRGB:256]];
    
    [CLRTestUtils assertFalse:[CLRColorUtils isValidArithmeticRGB:0.0f - .0000001f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidArithmeticRGB:0.0f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidArithmeticRGB:0.5f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidArithmeticRGB:1.0f]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidArithmeticRGB:1.0f + .0000001f]];
    
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHue:-0.0001f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHue:0.0f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHue:180.0f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidHue:360.0f]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidHue:360.0001f]];
    
    [CLRTestUtils assertFalse:[CLRColorUtils isValidSaturation:-0.0001f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidSaturation:0.0f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidSaturation:0.5f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidSaturation:1.0f]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidSaturation:1.0001f]];
    
    [CLRTestUtils assertFalse:[CLRColorUtils isValidLightness:-0.0001f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidLightness:0.0f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidLightness:0.5f]];
    [CLRTestUtils assertTrue:[CLRColorUtils isValidLightness:1.0f]];
    [CLRTestUtils assertFalse:[CLRColorUtils isValidLightness:1.0001f]];

}

/**
 * Test color utilities
 */
- (void)testUtils {
    
    [CLRTestUtils assertEqualDoubleWithValue:0.37254903 andValue2:[CLRColorUtils toArithmeticRGBFromRGB:95] andDelta:0.0000001];
    [CLRTestUtils assertEqualIntWithValue:95 andValue2:[CLRColorUtils toRGBFromArithmeticRGB:[CLRColorUtils toArithmeticRGBFromRGB:95]]];
    [CLRTestUtils assertEqualIntWithValue:95 andValue2:[CLRColorUtils toRGBFromHex:@"5F"]];
    [CLRTestUtils assertEqualDoubleWithValue:0.37254903 andValue2:[CLRColorUtils toArithmeticRGBFromHex:@"5F"] andDelta:0.0000001];
    
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils toRGBFromHex:@"00"]];
    [CLRTestUtils assertEqualDoubleWithValue:0.0 andValue2:[CLRColorUtils toArithmeticRGBFromHex:@"00"] andDelta:0.0];
    [CLRTestUtils assertEqualIntWithValue:128 andValue2:[CLRColorUtils toRGBFromHex:@"80"]];
    [CLRTestUtils assertEqualDoubleWithValue:0.5019608 andValue2:[CLRColorUtils toArithmeticRGBFromHex:@"80"] andDelta:0.0000001];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils toRGBFromHex:@"FF"]];
    [CLRTestUtils assertEqualDoubleWithValue:1.0 andValue2:[CLRColorUtils toArithmeticRGBFromHex:@"FF"] andDelta:0.0];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils toRGBFromHex:@"ff"]];
    [CLRTestUtils assertEqualDoubleWithValue:1.0 andValue2:[CLRColorUtils toArithmeticRGBFromHex:@"ff"] andDelta:0.0];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils toRGBFromHex:@"f"]];
    [CLRTestUtils assertEqualDoubleWithValue:1.0 andValue2:[CLRColorUtils toArithmeticRGBFromHex:@"f"] andDelta:0.0];

    [CLRTestUtils assertEqualWithValue:@"00" andValue2:[CLRColorUtils toHexFromRGB:0]];
    [CLRTestUtils assertEqualWithValue:@"00" andValue2:[CLRColorUtils toHexFromArithmeticRGB:0.0f]];
    [CLRTestUtils assertEqualWithValue:@"06" andValue2:[CLRColorUtils toHexFromRGB:6]];
    [CLRTestUtils assertEqualWithValue:@"06" andValue2:[CLRColorUtils toHexFromArithmeticRGB:0.02352941176f]];
    [CLRTestUtils assertEqualWithValue:@"80" andValue2:[CLRColorUtils toHexFromRGB:128]];
    [CLRTestUtils assertEqualWithValue:@"80" andValue2:[CLRColorUtils toHexFromArithmeticRGB:0.5f]];
    [CLRTestUtils assertEqualWithValue:@"FF" andValue2:[CLRColorUtils toHexFromRGB:255]];
    [CLRTestUtils assertEqualWithValue:@"FF" andValue2:[CLRColorUtils toHexFromArithmeticRGB:1.0f]];
    
    [CLRTestUtils assertEqualWithValue:@"A1" andValue2:[CLRColorUtils redHexFromHex:@"A1B2C3"]];
    [CLRTestUtils assertEqualWithValue:@"b2" andValue2:[CLRColorUtils greenHexFromHex:@"a1b2c3"]];
    [CLRTestUtils assertEqualWithValue:@"C3" andValue2:[CLRColorUtils blueHexFromHex:@"a1b2C3"]];
    [CLRTestUtils assertNil:[CLRColorUtils alphaHexFromHex:@"A1B2C3"]];
    [CLRTestUtils assertEqualWithValue:@"A1" andValue2:[CLRColorUtils redHexFromHex:@"D4A1B2C3"]];
    [CLRTestUtils assertEqualWithValue:@"b2" andValue2:[CLRColorUtils greenHexFromHex:@"d4a1b2c3"]];
    [CLRTestUtils assertEqualWithValue:@"C3" andValue2:[CLRColorUtils blueHexFromHex:@"d4a1b2C3"]];
    [CLRTestUtils assertEqualWithValue:@"Dd" andValue2:[CLRColorUtils alphaHexFromHex:@"DdA1B2C3"]];
    
    [CLRTestUtils assertEqualWithValue:@"A1" andValue2:[CLRColorUtils redHexFromHex:@"#A1B2C3"]];
    [CLRTestUtils assertEqualWithValue:@"b2" andValue2:[CLRColorUtils greenHexFromHex:@"#a1b2c3"]];
    [CLRTestUtils assertEqualWithValue:@"C3" andValue2:[CLRColorUtils blueHexFromHex:@"#a1b2C3"]];
    [CLRTestUtils assertNil:[CLRColorUtils alphaHexFromHex:@"#A1B2C3"]];
    [CLRTestUtils assertEqualWithValue:@"A1" andValue2:[CLRColorUtils redHexFromHex:@"#D4A1B2C3"]];
    [CLRTestUtils assertEqualWithValue:@"b2" andValue2:[CLRColorUtils greenHexFromHex:@"#d4a1b2c3"]];
    [CLRTestUtils assertEqualWithValue:@"C3" andValue2:[CLRColorUtils blueHexFromHex:@"#d4a1b2C3"]];
    [CLRTestUtils assertEqualWithValue:@"dD" andValue2:[CLRColorUtils alphaHexFromHex:@"#dDA1B2C3"]];
    
    [CLRTestUtils assertEqualWithValue:@"AA" andValue2:[CLRColorUtils redHexFromHex:@"ABC"]];
    [CLRTestUtils assertEqualWithValue:@"bb" andValue2:[CLRColorUtils greenHexFromHex:@"abc"]];
    [CLRTestUtils assertEqualWithValue:@"CC" andValue2:[CLRColorUtils blueHexFromHex:@"abC"]];
    [CLRTestUtils assertNil:[CLRColorUtils alphaHexFromHex:@"ABC"]];
    [CLRTestUtils assertEqualWithValue:@"AA" andValue2:[CLRColorUtils redHexFromHex:@"DABC"]];
    [CLRTestUtils assertEqualWithValue:@"bb" andValue2:[CLRColorUtils greenHexFromHex:@"dabc"]];
    [CLRTestUtils assertEqualWithValue:@"CC" andValue2:[CLRColorUtils blueHexFromHex:@"dabC"]];
    [CLRTestUtils assertEqualWithValue:@"DD" andValue2:[CLRColorUtils alphaHexFromHex:@"DABC"]];
    
    [CLRTestUtils assertEqualWithValue:@"AA" andValue2:[CLRColorUtils redHexFromHex:@"#ABC"]];
    [CLRTestUtils assertEqualWithValue:@"bb" andValue2:[CLRColorUtils greenHexFromHex:@"#abc"]];
    [CLRTestUtils assertEqualWithValue:@"CC" andValue2:[CLRColorUtils blueHexFromHex:@"#abC"]];
    [CLRTestUtils assertNil:[CLRColorUtils alphaHexFromHex:@"#ABC"]];
    [CLRTestUtils assertEqualWithValue:@"AA" andValue2:[CLRColorUtils redHexFromHex:@"#DABC"]];
    [CLRTestUtils assertEqualWithValue:@"bb" andValue2:[CLRColorUtils greenHexFromHex:@"#dabc"]];
    [CLRTestUtils assertEqualWithValue:@"CC" andValue2:[CLRColorUtils blueHexFromHex:@"#dabC"]];
    [CLRTestUtils assertEqualWithValue:@"DD" andValue2:[CLRColorUtils alphaHexFromHex:@"#DABC"]];
    
    [CLRTestUtils assertEqualWithValue:@"01" andValue2:[CLRColorUtils redHexFromHex:@"010203"]];
    [CLRTestUtils assertEqualWithValue:@"02" andValue2:[CLRColorUtils greenHexFromHex:@"010203"]];
    [CLRTestUtils assertEqualWithValue:@"03" andValue2:[CLRColorUtils blueHexFromHex:@"010203"]];
    [CLRTestUtils assertNil:[CLRColorUtils alphaHexFromHex:@"010203"]];
    [CLRTestUtils assertEqualWithValue:@"01" andValue2:[CLRColorUtils redHexFromHex:@"04010203"]];
    [CLRTestUtils assertEqualWithValue:@"02" andValue2:[CLRColorUtils greenHexFromHex:@"04010203"]];
    [CLRTestUtils assertEqualWithValue:@"03" andValue2:[CLRColorUtils blueHexFromHex:@"04010203"]];
    [CLRTestUtils assertEqualWithValue:@"04" andValue2:[CLRColorUtils alphaHexFromHex:@"04010203"]];
    
    [CLRTestUtils assertEqualWithValue:@"01" andValue2:[CLRColorUtils redHexFromHex:@"#010203"]];
    [CLRTestUtils assertEqualWithValue:@"02" andValue2:[CLRColorUtils greenHexFromHex:@"#010203"]];
    [CLRTestUtils assertEqualWithValue:@"03" andValue2:[CLRColorUtils blueHexFromHex:@"#010203"]];
    [CLRTestUtils assertNil:[CLRColorUtils alphaHexFromHex:@"#010203"]];
    [CLRTestUtils assertEqualWithValue:@"01" andValue2:[CLRColorUtils redHexFromHex:@"#04010203"]];
    [CLRTestUtils assertEqualWithValue:@"02" andValue2:[CLRColorUtils greenHexFromHex:@"#04010203"]];
    [CLRTestUtils assertEqualWithValue:@"03" andValue2:[CLRColorUtils blueHexFromHex:@"#04010203"]];
    [CLRTestUtils assertEqualWithValue:@"04" andValue2:[CLRColorUtils alphaHexFromHex:@"#04010203"]];
    
    [CLRTestUtils assertEqualWithValue:@"11" andValue2:[CLRColorUtils redHexFromHex:@"123"]];
    [CLRTestUtils assertEqualWithValue:@"22" andValue2:[CLRColorUtils greenHexFromHex:@"123"]];
    [CLRTestUtils assertEqualWithValue:@"33" andValue2:[CLRColorUtils blueHexFromHex:@"123"]];
    [CLRTestUtils assertNil:[CLRColorUtils alphaHexFromHex:@"123"]];
    [CLRTestUtils assertEqualWithValue:@"11" andValue2:[CLRColorUtils redHexFromHex:@"4123"]];
    [CLRTestUtils assertEqualWithValue:@"22" andValue2:[CLRColorUtils greenHexFromHex:@"4123"]];
    [CLRTestUtils assertEqualWithValue:@"33" andValue2:[CLRColorUtils blueHexFromHex:@"4123"]];
    [CLRTestUtils assertEqualWithValue:@"44" andValue2:[CLRColorUtils alphaHexFromHex:@"4123"]];
    
    [CLRTestUtils assertEqualWithValue:@"11" andValue2:[CLRColorUtils redHexFromHex:@"#123"]];
    [CLRTestUtils assertEqualWithValue:@"22" andValue2:[CLRColorUtils greenHexFromHex:@"#123"]];
    [CLRTestUtils assertEqualWithValue:@"33" andValue2:[CLRColorUtils blueHexFromHex:@"#123"]];
    [CLRTestUtils assertNil:[CLRColorUtils alphaHexFromHex:@"#123"]];
    [CLRTestUtils assertEqualWithValue:@"11" andValue2:[CLRColorUtils redHexFromHex:@"#4123"]];
    [CLRTestUtils assertEqualWithValue:@"22" andValue2:[CLRColorUtils greenHexFromHex:@"#4123"]];
    [CLRTestUtils assertEqualWithValue:@"33" andValue2:[CLRColorUtils blueHexFromHex:@"#4123"]];
    [CLRTestUtils assertEqualWithValue:@"44" andValue2:[CLRColorUtils alphaHexFromHex:@"#4123"]];
    
    [CLRTestUtils assertEqualWithValue:@"11" andValue2:[CLRColorUtils redHexFromHex:@"112233"]];
    [CLRTestUtils assertEqualWithValue:@"22" andValue2:[CLRColorUtils greenHexFromHex:@"112233"]];
    [CLRTestUtils assertEqualWithValue:@"33" andValue2:[CLRColorUtils blueHexFromHex:@"112233"]];
    [CLRTestUtils assertNil:[CLRColorUtils alphaHexFromHex:@"112233"]];
    [CLRTestUtils assertEqualWithValue:@"11" andValue2:[CLRColorUtils redHexFromHex:@"44112233"]];
    [CLRTestUtils assertEqualWithValue:@"22" andValue2:[CLRColorUtils greenHexFromHex:@"44112233"]];
    [CLRTestUtils assertEqualWithValue:@"33" andValue2:[CLRColorUtils blueHexFromHex:@"44112233"]];
    [CLRTestUtils assertEqualWithValue:@"44" andValue2:[CLRColorUtils alphaHexFromHex:@"44112233"]];
    
    [CLRTestUtils assertEqualWithValue:@"11" andValue2:[CLRColorUtils redHexFromHex:@"#112233"]];
    [CLRTestUtils assertEqualWithValue:@"22" andValue2:[CLRColorUtils greenHexFromHex:@"#112233"]];
    [CLRTestUtils assertEqualWithValue:@"33" andValue2:[CLRColorUtils blueHexFromHex:@"#112233"]];
    [CLRTestUtils assertNil:[CLRColorUtils alphaHexFromHex:@"#112233"]];
    [CLRTestUtils assertEqualWithValue:@"11" andValue2:[CLRColorUtils redHexFromHex:@"#44112233"]];
    [CLRTestUtils assertEqualWithValue:@"22" andValue2:[CLRColorUtils greenHexFromHex:@"#44112233"]];
    [CLRTestUtils assertEqualWithValue:@"33" andValue2:[CLRColorUtils blueHexFromHex:@"#44112233"]];
    [CLRTestUtils assertEqualWithValue:@"44" andValue2:[CLRColorUtils alphaHexFromHex:@"#44112233"]];
    
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils redFromColor:-16711936]];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils greenFromColor:-16711936]];
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils blueFromColor:-16711936]];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils alphaFromColor:-16711936]];
    
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils redFromColor:0xFF00FF00]];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils greenFromColor:0xff00ff00]];
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils blueFromColor:0xFF00FF00]];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils alphaFromColor:0xff00ff00]];
    
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils redFromUnsignedColor:4278255360]];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils greenFromUnsignedColor:4278255360]];
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils blueFromUnsignedColor:4278255360]];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils alphaFromUnsignedColor:4278255360]];
    
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils redFromColor:65280]];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils greenFromColor:65280]];
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils blueFromColor:65280]];
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils alphaFromColor:65280]];
    
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils redFromColor:0x00FF00]];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils greenFromColor:0x00ff00]];
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils blueFromColor:0x00FF00]];
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils alphaFromColor:0x00ff00]];
    
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils redFromUnsignedColor:65280]];
    [CLRTestUtils assertEqualIntWithValue:255 andValue2:[CLRColorUtils greenFromUnsignedColor:65280]];
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils blueFromUnsignedColor:65280]];
    [CLRTestUtils assertEqualIntWithValue:0 andValue2:[CLRColorUtils alphaFromUnsignedColor:65280]];
    
    [CLRTestUtils assertEqualIntWithValue:65280 andValue2:[CLRColorUtils toColorFromRed:[CLRColorUtils toRGBFromHex:@"00"] andGreen:[CLRColorUtils toRGBFromHex:@"FF"] andBlue:[CLRColorUtils toRGBFromHex:@"00"]]];
    [CLRTestUtils assertEqualIntWithValue:65280 andValue2:[CLRColorUtils toUnsignedColorFromRed:[CLRColorUtils toRGBFromHex:@"00"] andGreen:[CLRColorUtils toRGBFromHex:@"FF"] andBlue:[CLRColorUtils toRGBFromHex:@"00"]]];
    [CLRTestUtils assertEqualIntWithValue:-16711936 andValue2:[CLRColorUtils toColorWithAlphaFromRed:[CLRColorUtils toRGBFromHex:@"00"] andGreen:[CLRColorUtils toRGBFromHex:@"FF"] andBlue:[CLRColorUtils toRGBFromHex:@"00"]]];
    [CLRTestUtils assertEqualUnsignedIntWithValue:4278255360 andValue2:[CLRColorUtils toUnsignedColorWithAlphaFromRed:[CLRColorUtils toRGBFromHex:@"00"] andGreen:[CLRColorUtils toRGBFromHex:@"FF"] andBlue:[CLRColorUtils toRGBFromHex:@"00"]]];
    [CLRTestUtils assertEqualIntWithValue:-16711936 andValue2:[CLRColorUtils toColorWithAlphaFromRed:[CLRColorUtils toRGBFromHex:@"00"] andGreen:[CLRColorUtils toRGBFromHex:@"FF"] andBlue:[CLRColorUtils toRGBFromHex:@"00"] andAlpha:[CLRColorUtils toRGBFromHex:@"fF"]]];
    [CLRTestUtils assertEqualUnsignedIntWithValue:4278255360 andValue2:[CLRColorUtils toUnsignedColorWithAlphaFromRed:[CLRColorUtils toRGBFromHex:@"00"] andGreen:[CLRColorUtils toRGBFromHex:@"FF"] andBlue:[CLRColorUtils toRGBFromHex:@"00"] andAlpha:[CLRColorUtils toRGBFromHex:@"fF"]]];
    
    [CLRTestUtils assertEqualWithValue:@"#A0B0C0" andValue2:[CLRColorUtils toColorFromHexRed:@"A0" andGreen:@"B0" andBlue:@"C0"]];
    [CLRTestUtils assertEqualWithValue:@"#FFA0B0C0" andValue2:[CLRColorUtils toColorWithAlphaFromHexRed:@"A0" andGreen:@"B0" andBlue:@"C0"]];
    [CLRTestUtils assertEqualWithValue:@"#A0B0C0" andValue2:[CLRColorUtils toColorShorthandFromHexRed:@"A0" andGreen:@"B0" andBlue:@"C0"]];
    [CLRTestUtils assertEqualWithValue:@"#ABC" andValue2:[CLRColorUtils toColorShorthandFromHexRed:@"AA" andGreen:@"BB" andBlue:@"CC"]];
    [CLRTestUtils assertEqualWithValue:@"#FFA0B0C0" andValue2:[CLRColorUtils toColorShorthandWithAlphaFromHexRed:@"A0" andGreen:@"B0" andBlue:@"C0"]];
    [CLRTestUtils assertEqualWithValue:@"#FABC" andValue2:[CLRColorUtils toColorShorthandWithAlphaFromHexRed:@"AA" andGreen:@"BB" andBlue:@"CC"]];
    [CLRTestUtils assertEqualWithValue:@"#D0A0B0C0" andValue2:[CLRColorUtils toColorWithAlphaFromHexRed:@"A0" andGreen:@"B0" andBlue:@"C0" andAlpha:@"D0"]];
    [CLRTestUtils assertEqualWithValue:@"#D0A0B0C0" andValue2:[CLRColorUtils toColorShorthandWithAlphaFromHexRed:@"A0" andGreen:@"B0" andBlue:@"C0" andAlpha:@"D0"]];
    [CLRTestUtils assertEqualWithValue:@"#D0AABBCC" andValue2:[CLRColorUtils toColorShorthandWithAlphaFromHexRed:@"AA" andGreen:@"BB" andBlue:@"CC" andAlpha:@"D0"]];
    [CLRTestUtils assertEqualWithValue:@"#DABC" andValue2:[CLRColorUtils toColorShorthandWithAlphaFromHexRed:@"AA" andGreen:@"BB" andBlue:@"CC" andAlpha:@"DD"]];
    
    [CLRTestUtils assertEqualWithValue:@"#a0b0c0" andValue2:[CLRColorUtils toColorFromHexRed:@"a0" andGreen:@"b0" andBlue:@"c0"]];
    [CLRTestUtils assertEqualWithValue:@"#ffa0b0c0" andValue2:[CLRColorUtils toColorWithAlphaFromHexRed:@"a0" andGreen:@"b0" andBlue:@"c0"]];
    [CLRTestUtils assertEqualWithValue:@"#a0b0c0" andValue2:[CLRColorUtils toColorShorthandFromHexRed:@"a0" andGreen:@"b0" andBlue:@"c0"]];
    [CLRTestUtils assertEqualWithValue:@"#abc" andValue2:[CLRColorUtils toColorShorthandFromHexRed:@"aa" andGreen:@"bb" andBlue:@"cc"]];
    [CLRTestUtils assertEqualWithValue:@"#ffa0b0c0" andValue2:[CLRColorUtils toColorShorthandWithAlphaFromHexRed:@"a0" andGreen:@"b0" andBlue:@"c0"]];
    [CLRTestUtils assertEqualWithValue:@"#fabc" andValue2:[CLRColorUtils toColorShorthandWithAlphaFromHexRed:@"aa" andGreen:@"bb" andBlue:@"cc"]];
    [CLRTestUtils assertEqualWithValue:@"#d0a0b0c0" andValue2:[CLRColorUtils toColorWithAlphaFromHexRed:@"a0" andGreen:@"b0" andBlue:@"c0" andAlpha:@"d0"]];
    [CLRTestUtils assertEqualWithValue:@"#d0a0b0c0" andValue2:[CLRColorUtils toColorShorthandWithAlphaFromHexRed:@"a0" andGreen:@"b0" andBlue:@"c0" andAlpha:@"d0"]];
    [CLRTestUtils assertEqualWithValue:@"#d0aabbcc" andValue2:[CLRColorUtils toColorShorthandWithAlphaFromHexRed:@"aa" andGreen:@"bb" andBlue:@"cc" andAlpha:@"d0"]];
    [CLRTestUtils assertEqualWithValue:@"#dabc" andValue2:[CLRColorUtils toColorShorthandWithAlphaFromHexRed:@"aa" andGreen:@"bb" andBlue:@"cc" andAlpha:@"dd"]];
    
    [CLRTestUtils assertEqualWithValue:@"10a0d1" andValue2:[CLRColorUtils shorthandHex:@"10a0d1"]];
    [CLRTestUtils assertEqualWithValue:@"#10a0d1" andValue2:[CLRColorUtils shorthandHex:@"#10a0d1"]];
    [CLRTestUtils assertEqualWithValue:@"0D0A0B0C" andValue2:[CLRColorUtils shorthandHex:@"0D0A0B0C"]];
    [CLRTestUtils assertEqualWithValue:@"#0D0a0B0c" andValue2:[CLRColorUtils shorthandHex:@"#0D0a0B0c"]];
    [CLRTestUtils assertEqualWithValue:@"1ad" andValue2:[CLRColorUtils shorthandHex:@"11aadd"]];
    [CLRTestUtils assertEqualWithValue:@"#1aD" andValue2:[CLRColorUtils shorthandHex:@"#11aADd"]];
    [CLRTestUtils assertEqualWithValue:@"DABC" andValue2:[CLRColorUtils shorthandHex:@"DDAABBCC"]];
    [CLRTestUtils assertEqualWithValue:@"#dAbC" andValue2:[CLRColorUtils shorthandHex:@"#dDAabBCc"]];
    
    [CLRTestUtils assertEqualWithValue:@"10a0d1" andValue2:[CLRColorUtils expandShorthandHex:@"10a0d1"]];
    [CLRTestUtils assertEqualWithValue:@"#10a0d1" andValue2:[CLRColorUtils expandShorthandHex:@"#10a0d1"]];
    [CLRTestUtils assertEqualWithValue:@"0D0A0B0C" andValue2:[CLRColorUtils expandShorthandHex:@"0D0A0B0C"]];
    [CLRTestUtils assertEqualWithValue:@"#0D0a0B0c" andValue2:[CLRColorUtils expandShorthandHex:@"#0D0a0B0c"]];
    [CLRTestUtils assertEqualWithValue:@"11aadd" andValue2:[CLRColorUtils expandShorthandHex:@"1ad"]];
    [CLRTestUtils assertEqualWithValue:@"#11aaDD" andValue2:[CLRColorUtils expandShorthandHex:@"#1aD"]];
    [CLRTestUtils assertEqualWithValue:@"DDAABBCC" andValue2:[CLRColorUtils expandShorthandHex:@"DABC"]];
    [CLRTestUtils assertEqualWithValue:@"#ddAAbbCC" andValue2:[CLRColorUtils expandShorthandHex:@"#dAbC"]];

    [CLRTestUtils assertEqualWithValue:@"10" andValue2:[CLRColorUtils shorthandHexSingle:@"10"]];
    [CLRTestUtils assertEqualWithValue:@"0A" andValue2:[CLRColorUtils shorthandHexSingle:@"0A"]];
    [CLRTestUtils assertEqualWithValue:@"d" andValue2:[CLRColorUtils shorthandHexSingle:@"dd"]];
    [CLRTestUtils assertEqualWithValue:@"c" andValue2:[CLRColorUtils shorthandHexSingle:@"cC"]];
    [CLRTestUtils assertEqualWithValue:@"A" andValue2:[CLRColorUtils shorthandHexSingle:@"Aa"]];
    [CLRTestUtils assertEqualWithValue:@"B" andValue2:[CLRColorUtils shorthandHexSingle:@"BB"]];
    
    [CLRTestUtils assertEqualWithValue:@"10" andValue2:[CLRColorUtils expandShorthandHexSingle:@"10"]];
    [CLRTestUtils assertEqualWithValue:@"0A" andValue2:[CLRColorUtils expandShorthandHexSingle:@"0A"]];
    [CLRTestUtils assertEqualWithValue:@"dd" andValue2:[CLRColorUtils expandShorthandHexSingle:@"d"]];
    [CLRTestUtils assertEqualWithValue:@"CC" andValue2:[CLRColorUtils expandShorthandHexSingle:@"C"]];
    
    float *hsl = [CLRColorUtils toHSLFromRed:0 andGreen:0 andBlue:0];
    [CLRTestUtils assertEqualDoubleWithValue:0.0f andValue2:hsl[0]];
    [CLRTestUtils assertEqualDoubleWithValue:0.0f andValue2:hsl[1]];
    [CLRTestUtils assertEqualDoubleWithValue:0.0f andValue2:hsl[2]];
    
    float *arithmeticRGB = [CLRColorUtils toArithmeticRGBFromHue:0.0f andSaturation:0.0f andLightness:0.0f];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:0] andValue2:arithmeticRGB[0]];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:0] andValue2:arithmeticRGB[1]];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:0] andValue2:arithmeticRGB[2]];
    
    hsl = [CLRColorUtils toHSLFromRed:255 andGreen:0 andBlue:0];
    [CLRTestUtils assertEqualDoubleWithValue:0.0f andValue2:hsl[0]];
    [CLRTestUtils assertEqualDoubleWithValue:1.0f andValue2:hsl[1]];
    [CLRTestUtils assertEqualDoubleWithValue:0.5f andValue2:hsl[2]];
    
    arithmeticRGB = [CLRColorUtils toArithmeticRGBFromHue:0.0f andSaturation:1.0f andLightness:0.5f];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:255] andValue2:arithmeticRGB[0]];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:0] andValue2:arithmeticRGB[1]];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:0] andValue2:arithmeticRGB[2]];
    
    hsl = [CLRColorUtils toHSLFromRed:0 andGreen:255 andBlue:0];
    [CLRTestUtils assertEqualDoubleWithValue:120.0f andValue2:hsl[0]];
    [CLRTestUtils assertEqualDoubleWithValue:1.0f andValue2:hsl[1]];
    [CLRTestUtils assertEqualDoubleWithValue:0.5f andValue2:hsl[2]];
    
    arithmeticRGB = [CLRColorUtils toArithmeticRGBFromHue:120.0f andSaturation:1.0f andLightness:0.5f];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:0] andValue2:arithmeticRGB[0]];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:255] andValue2:arithmeticRGB[1]];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:0] andValue2:arithmeticRGB[2]];
    
    hsl = [CLRColorUtils toHSLFromRed:0 andGreen:0 andBlue:255];
    [CLRTestUtils assertEqualDoubleWithValue:240.0f andValue2:hsl[0]];
    [CLRTestUtils assertEqualDoubleWithValue:1.0f andValue2:hsl[1]];
    [CLRTestUtils assertEqualDoubleWithValue:0.5f andValue2:hsl[2]];
    
    arithmeticRGB = [CLRColorUtils toArithmeticRGBFromHue:240.0f andSaturation:1.0f andLightness:0.5f];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:0] andValue2:arithmeticRGB[0]];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:0] andValue2:arithmeticRGB[1]];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:255] andValue2:arithmeticRGB[2]];
    
    hsl = [CLRColorUtils toHSLFromRed:255 andGreen:255 andBlue:255];
    [CLRTestUtils assertEqualDoubleWithValue:0.0f andValue2:hsl[0]];
    [CLRTestUtils assertEqualDoubleWithValue:0.0f andValue2:hsl[1]];
    [CLRTestUtils assertEqualDoubleWithValue:1.0f andValue2:hsl[2]];
    
    arithmeticRGB = [CLRColorUtils toArithmeticRGBFromHue:0.0f andSaturation:0.0f andLightness:1.0f];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:255] andValue2:arithmeticRGB[0]];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:255] andValue2:arithmeticRGB[1]];
    [CLRTestUtils assertEqualDoubleWithValue:[CLRColorUtils toArithmeticRGBFromRGB:255] andValue2:arithmeticRGB[2]];
    
    hsl = [CLRColorUtils toHSLFromRed:200 andGreen:165 andBlue:10];
    [CLRTestUtils assertEqualDoubleWithValue:48.94737f andValue2:hsl[0]];
    [CLRTestUtils assertEqualDoubleWithValue:0.9047619f andValue2:hsl[1]];
    [CLRTestUtils assertEqualDoubleWithValue:0.4117647f andValue2:hsl[2]];
    
    int *rgb = [CLRColorUtils toRGBFromHue:48.94737f andSaturation:0.9047619f andLightness:0.4117647f];
    [CLRTestUtils assertEqualIntWithValue:200 andValue2:rgb[0]];
    [CLRTestUtils assertEqualIntWithValue:165 andValue2:rgb[1]];
    [CLRTestUtils assertEqualIntWithValue:10 andValue2:rgb[2]];
    
    hsl = [CLRColorUtils toHSLFromRed:52 andGreen:113 andBlue:82];
    [CLRTestUtils assertEqualDoubleWithValue:149.50821f andValue2:hsl[0]];
    [CLRTestUtils assertEqualDoubleWithValue:0.36969694f andValue2:hsl[1]];
    [CLRTestUtils assertEqualDoubleWithValue:0.32352942f andValue2:hsl[2]];
    
    rgb = [CLRColorUtils toRGBFromHue:149.50821f andSaturation:0.36969694f andLightness:0.32352942f];
    [CLRTestUtils assertEqualIntWithValue:52 andValue2:rgb[0]];
    [CLRTestUtils assertEqualIntWithValue:113 andValue2:rgb[1]];
    [CLRTestUtils assertEqualIntWithValue:82 andValue2:rgb[2]];
    
}

@end

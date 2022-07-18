//
//  CLRReadmeTest.m
//  color-iosTests
//
//  Created by Brian Osborn on 7/18/22.
//  Copyright © 2022 NGA. All rights reserved.
//

#import "CLRReadmeTest.h"
#import "CLRColor.h"
#import "CLRColorConstants.h"

@implementation CLRReadmeTest

/**
 * Test Color
 */
-(void) testColor{

    CLRColor *rgb = [CLRColor colorWithRed:154 andGreen:205 andBlue:50];
    CLRColor *rgba = [CLRColor colorWithRed:255 andGreen:165 andBlue:0 andAlpha:64];
    CLRColor *rgbOpacity = [CLRColor colorWithRed:255 andGreen:165 andBlue:0 andOpacity:0.25];
    CLRColor *arithmeticRGB = [CLRColor colorWithArithmeticRed:1.0 andGreen:0.64705882352 andBlue:0.0];
    CLRColor *arithmeticRGBOpacity = [CLRColor colorWithArithmeticRed:1.0 andGreen:0.64705882352 andBlue:0.0 andOpacity:0.25098039215];
    CLRColor *hex = [CLRColor colorWithHex:@"#BA55D3"];
    CLRColor *hexAlpha = [CLRColor colorWithHex:@"#D9FFFF00"];
    CLRColor *hexInteger = [CLRColor colorWithColor:0xFFC000];
    CLRColor *hexIntegerAlpha = [CLRColor colorWithColor:0x40FFA500];
    CLRColor *integer = [CLRColor colorWithColor:16711680];
    CLRColor *integerAlpha = [CLRColor colorWithColor:-12303292];
    CLRColor *hexSingles = [CLRColor colorWithHexRed:@"FF" andGreen:@"C0" andBlue:@"CB"];
    CLRColor *hexSinglesAlpha = [CLRColor colorWithHexRed:@"00" andGreen:@"00" andBlue:@"00" andAlpha:@"80"];
    CLRColor *hexSinglesOpacity = [CLRColor colorWithHexRed:@"FF" andGreen:@"A5" andBlue:@"00" andOpacity:0.25];
    CLRColor *hsl = [CLRColor colorWithHue:300.0 andSaturation:1.0 andLightness:0.2509804];
    CLRColor *hsla = [CLRColor colorWithHue:60.0 andSaturation:1.0 andLightness:0.5 andAlpha:0.85098039215];
    CLRColor *orangeAlpha = [CLRColor colorWithHex:CLR_COLOR_ORANGE andAlpha:120];
    CLRColor *orangeOpacity = [CLRColor colorWithHex:CLR_COLOR_ORANGE andOpacity:0.25];

    CLRColor *color = [CLRColor blue];
    [color setAlpha:56];
    NSString *hexValue = [color colorHex];
    NSString *hexShorthand = [color colorHexShorthand];
    NSString *hexWithAlpha = [color colorHexWithAlpha];
    NSString *hexShorthandWithAlpha = [color colorHexShorthandWithAlpha];
    int integerValue = [color color];
    int integerAlphaValue = [color colorWithAlpha];
    int red = [color red];
    float greenArithmetic = color.greenArithmetic;
    NSString *blueHex = [color blueHex];
    NSString *alphaHexShorthand = [color alphaHexShorthand];
    float opacity = color.opacity;
    float *hslValue = [color hsl];
    float hue = [color hue];
    float saturation = [color saturation];
    float lightness = [color lightness];
    
}

@end

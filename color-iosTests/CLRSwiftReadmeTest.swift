//
//  CLRSwiftReadmeTest.swift
//  color-iosTests
//
//  Created by Brian Osborn on 7/18/22.
//  Copyright © 2022 NGA. All rights reserved.
//

import XCTest

class CLRSwiftReadmeTest: XCTestCase{
    
    /**
     * Test Color
     */
    func testColor(){

        let rgb : CLRColor = CLRColor.init(red:154, andGreen:205, andBlue:50)
        let rgba : CLRColor = CLRColor.init(red:255, andGreen:165, andBlue:0, andAlpha:64)
        let rgbOpacity : CLRColor = CLRColor.init(red:255, andGreen:165, andBlue:0, andOpacity:0.25)
        let arithmeticRGB : CLRColor = CLRColor.init(arithmeticRed:1.0, andGreen:0.64705882352, andBlue:0.0)
        let arithmeticRGBOpacity : CLRColor = CLRColor.init(arithmeticRed:1.0, andGreen:0.64705882352, andBlue:0.0, andOpacity:0.25098039215)
        let hex : CLRColor = CLRColor.init(hex:"#BA55D3")
        let hexAlpha : CLRColor = CLRColor.init(hex:"#D9FFFF00")
        let hexInteger : CLRColor = CLRColor.init(color:0xFFC000)
        let hexIntegerAlpha : CLRColor = CLRColor.init(color:0x40FFA500)
        let integer : CLRColor = CLRColor.init(color:16711680)
        let integerAlpha : CLRColor = CLRColor.init(color:-12303292)
        let hexSingles : CLRColor = CLRColor.init(hexRed:"FF", andGreen:"C0", andBlue:"CB")
        let hexSinglesAlpha : CLRColor = CLRColor.init(hexRed:"00", andGreen:"00", andBlue:"00", andAlpha:"80")
        let hexSinglesOpacity : CLRColor = CLRColor.init(hexRed:"FF", andGreen:"A5", andBlue:"00", andOpacity:0.25)
        let hsl : CLRColor = CLRColor.init(hue:300.0, andSaturation:1.0, andLightness:0.2509804)
        let hsla : CLRColor = CLRColor.init(hue:60.0, andSaturation:1.0, andLightness:0.5, andAlpha:0.85098039215)
        let orangeAlpha : CLRColor = CLRColor.init(hex:CLR_COLOR_ORANGE, andAlpha:120)
        let orangeOpacity : CLRColor = CLRColor.init(hex:CLR_COLOR_ORANGE, andOpacity:0.25)

        let color : CLRColor = CLRColor.blue()
        color.setAlpha(56)
        let hexValue : String = color.colorHex()
        let hexShorthand : String = color.colorHexShorthand()
        let hexWithAlpha : String = color.colorHexWithAlpha()
        let hexShorthandWithAlpha : String = color.colorHexShorthandWithAlpha()
        let integerValue : Int32 = color.color()
        let integerAlphaValue : Int32 = color.colorWithAlpha()
        let red : Int32 = color.red()
        let greenArithmetic : Float = color.greenArithmetic
        let blueHex : String = color.blueHex()
        let alphaHexShorthand : String = color.alphaHexShorthand()
        let opacity : Float = color.opacity
        let hslValue : UnsafeMutablePointer<Float> = color.hsl()
        let hue : Float = color.hue()
        let saturation : Float = color.saturation()
        let lightness : Float = color.lightness()
         
    }
    
}

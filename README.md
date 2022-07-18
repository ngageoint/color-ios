# Color iOS

#### Color Lib ####

The Color Library was developed at the [National Geospatial-Intelligence Agency (NGA)](http://www.nga.mil/) in collaboration with [BIT Systems](https://www.caci.com/bit-systems/). The government has "unlimited rights" and is releasing this software to increase the impact of government investments by providing developers with the opportunity to take things in new directions. The software use, modification, and distribution rights are stipulated within the [MIT license](http://choosealicense.com/licenses/mit/).

### Pull Requests ###
If you'd like to contribute to this project, please make a pull request. We'll review the pull request and discuss the changes. All pull request contributions to this project will be released under the MIT license.

Software source code previously released under an open source license and then modified by NGA staff is considered a "joint work" (see 17 USC § 101); it is partially copyrighted, partially public domain, and as a whole is protected by the copyrights of the non-government authors and must be released according to the terms of the original open source license.

### About ###

[Color](http://ngageoint.github.io/color-ios/) is an iOS Objective-C library providing color representation with support for hex, RBG, arithmetic RBG, HSL, and integer colors.

### Usage ###

View the latest [Appledoc](http://ngageoint.github.io/color-ios/docs/api/)

```objectivec

// TODO

```

### Build ###

[![Build & Test](https://github.com/ngageoint/color-ios/workflows/Build%20&%20Test/badge.svg)](https://github.com/ngageoint/color-ios/actions/workflows/build-test.yml)

Build this repository using Xcode and/or CocoaPods:

    pod install

Open color-ios.xcworkspace in Xcode or build from command line:

    xcodebuild -workspace 'color-ios.xcworkspace' -scheme color-ios build

Run tests from Xcode or from command line:

    xcodebuild test -workspace 'color-ios.xcworkspace' -scheme color-ios -destination 'platform=iOS Simulator,name=iPhone 12'

### Include Library ###

Include this repository by specifying it in a Podfile using a supported option.

Pull from [CocoaPods](https://cocoapods.org/pods/color-ios):

    pod 'color-ios', '~> 1.0.0'

Pull from GitHub:

    pod 'color-ios', :git => 'https://github.com/ngageoint/color-ios.git', :branch => 'master'
    pod 'color-ios', :git => 'https://github.com/ngageoint/color-ios.git', :tag => '1.0.0'

Include as local project:

    pod 'color-ios', :path => '../color-ios'

### Swift ###

To use from Swift, import the color-ios bridging header from the Swift project's bridging header

    #import "color-ios-Bridging-Header.h"

```swift

// TODO

```

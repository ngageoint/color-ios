// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Color",
    platforms: [.iOS(.v13)], // iOS only colors: no macOS support
    products: [
        .library(
            name: "Color",
            targets: ["Color"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Color",
            dependencies: [
            ],
            path: "color-ios"
        ),
        .testTarget(
            name: "ColorTests",
            dependencies: [
                "Color"
            ],
            path: "color-iosTests"
        ),
        .testTarget(
            name: "ColorTestsSwift",
            dependencies: [
                "Color"
            ],
            path: "color-iosTests-swift"
        )
    ]
)

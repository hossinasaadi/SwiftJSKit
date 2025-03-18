// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftJSKit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftJSKit",
            targets: ["SwiftJSKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        .binaryTarget(
            name: "GoJsKit",
            url: "https://github.com/hossinasaadi/gojskit/releases/latest/download/GoJsKit.xcframework.zip",
            checksum: "41d99f68694264205fe6cfa4ddee9262c03008ecfccfd449ce7f9837f94eeb82"
        ),

        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftJSKit",
            dependencies: ["GoJsKit"]

        ),
        .testTarget(
            name: "SwiftJSKitTests",
            dependencies: ["SwiftJSKit"]
        ),
    ]
)

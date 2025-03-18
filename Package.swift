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
            checksum: "104987ba97e4b90a1eca8ef391dd10219d19d78eff8672362e04dccd9d00c60d"
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

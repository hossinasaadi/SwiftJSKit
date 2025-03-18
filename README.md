# SwiftJSKit

SwiftJSKit is a Swift package that allows you to run JavaScript code in your Swift applications with a focus on performance and memory efficiency. Unlike Apple's `JavaScriptCore`, which can consume significant memory and is difficult to clear until the app is closed, SwiftJSKit provides a more optimized approach to embedding and running JavaScript in your app.

## Why SwiftJSKit?

The main issue with `JavaScriptCore` is its high memory usage, which can lead to performance degradation in your iOS app, especially when running large JavaScript modules. Additionally, `JavaScriptCore` does not release memory until the entire app is closed, which can be problematic for apps that need to manage memory more efficiently.

SwiftJSKit aims to solve these issues by offering a lighter and more flexible alternative. The library is designed to use less memory and provide better performance when running JavaScript code in your app. By using SwiftJSKit, you can run JavaScript without worrying about unnecessary memory consumption or performance bottlenecks.

## Installation

To install SwiftJSKit, add the following line to your `Package.swift` file:

```swift
dependencies: [ .package(url: "https://github.com/hossinasaadi/SwiftJSKit.git", from: "1.0.0") ]

```
Alternatively, you can add the package through Xcode’s Swift Package Manager interface by selecting **File > Swift Packages > Add Package Dependency** and entering the repository URL: `https://github.com/hossinasaadi/SwiftJSKit.git`.

## Usage

To use SwiftJSKit in your Swift project, simply import the package:
```swift
import SwiftJSKit
```
Then, you can execute JavaScript code like this:
```swift

    let script = """
    function print(a,b,c) {
        console.log(a,b,c)
    }
    function printAndReturn(a,b,c) {
        console.log(a,b,c)

        return [a,b,c].join(",");
    }
    """

    let sjk = SwiftJSKit()
    sjk.evaluateScript(script: script)
    
    let result = sjk.callFunc(functionName: "printAndReturn", params: "asd",12,false)


```
For more advanced use cases, refer to the documentation inside the repo.

## Performance Comparison

Compared to Apple's `JavaScriptCore`, SwiftJSKit offers:

- Lower memory footprint.
- Better performance for running JavaScript code in your app.

For more details on the issues with `JavaScriptCore` and its memory usage, see the following resources:

- [Huge memory consumption on iOS while loading JavaScript module](https://forums.fusetools.com/t/huge-memory-consumption-on-ios-while-loading-javascript-module/3679)
- [iOS Swift JavaScriptCore Performance Optimization](https://stackoverflow.com/questions/32725833/ios-swift-javascriptcore-performance-optimization)
- [JavaScriptCore Memory Profiling](https://stackoverflow.com/questions/40919658/javascriptcore-memory-profiling)
- [Apple Developer Forums: JavaScriptCore Memory Issues](https://forums.developer.apple.com/forums/thread/734668)
- [Apple Developer Forums: JavaScriptCore Memory Management](https://developer.apple.com/forums/thread/649582)

## Contributing

Feel free to open issues or pull requests. Any contributions are welcome!

gojsKit : https://github.com/hossinasaadi/gojskit

Thanks to: https://github.com/dop251/goja

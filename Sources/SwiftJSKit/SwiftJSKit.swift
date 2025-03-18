// The Swift Programming Language
// https://docs.swift.org/swift-book

import GoJsKit

public class SwiftJSKit {
    private var context:GojsCore = GojsCore()
    
    public init() {}
    
//    go implement of GojsCore
//    public func JSContext() -> GojsCore {
//        return self.context
//    }
    
    public func evaluateScript(script:String) {
        context.evaluateScript(script)
    }

    public func callFunc(functionName:String, params: Any...) -> String {
        if let jsonData = try? JSONSerialization.data(withJSONObject: params, options: []),
           let jsonString = String(data: jsonData, encoding: .utf8) {
            return context.callFunc(functionName, jsonParams: jsonString)
        }
        return ""
    }

}

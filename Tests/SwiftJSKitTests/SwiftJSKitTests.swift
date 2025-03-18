import Testing
@testable import SwiftJSKit

@Test func example() async throws {
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

    assert(result == "asd,12,false", "ok")

}

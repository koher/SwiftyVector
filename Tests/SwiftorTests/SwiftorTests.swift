import XCTest
@testable import Swiftor

class SwiftorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Swiftor().text, "Hello, World!")
    }


    static var allTests : [(String, (SwiftorTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}

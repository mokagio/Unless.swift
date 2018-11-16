import XCTest
@testable import Unless

final class UnlessTests: XCTestCase {
    func testItCallsTheGivenClosureIfConditionIsFalse() {
        var called = false
        unless(false) { called = true }
        XCTAssertTrue(called, "Expected closure to run and set called to true")
    }

    func testItDoesNotCallTheGivenClosureIfConditionIsTrue() {
        var called = false
        unless(true) { called = true }
        XCTAssertFalse(called, "Expected closure to not run")
    }

    static var allTests : [(String, (UnlessTests) -> () throws -> Void)] {
        return [
            ("testItCallsTheGivenClosureIfConditionIsFalse", testItCallsTheGivenClosureIfConditionIsFalse),
            ("testItDoesNotCallTheGivenClosureIfConditionIsTrue", testItDoesNotCallTheGivenClosureIfConditionIsTrue)
        ]
    }
}

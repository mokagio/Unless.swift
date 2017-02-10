import XCTest
@testable import Unless

class UnlessTests: XCTestCase {
  func testItCallsTheGivenClosureIfConditionIsFalse() {
    var probe = false
    unless({ return false }, do: { probe = true })
    XCTAssertTrue(probe, "Expected closure to run and set probe to true")
  }

  func testItDoesNotCallTheGivenClosureIfConditionIsTrue() {
    var probe = false
    unless({ return true }, do: { probe = true })
    XCTAssertFalse(probe, "Expected closure to not run")
  }

  static var allTests : [(String, (UnlessTests) -> () throws -> Void)] {
    return [
      ("testItCallsTheGivenClosureIfConditionIsFalse", testItCallsTheGivenClosureIfConditionIsFalse),
      ("testItDoesNotCallTheGivenClosureIfConditionIsTrue", testItDoesNotCallTheGivenClosureIfConditionIsTrue)
    ]
  }
}

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

  func testItCallsTheGivenClosureIfAutoclosureConditionIsFalse() {
    var called = false
    unless(1 > 2) { called = true }
    XCTAssertTrue(called, "Expected closure to run and set called to true")
  }

  func testItDoesNotCallTheGivenClosureIfAutoclosureConditionIsTrue() {
    var called = false
    unless(2 > 1) { called = true }
    XCTAssertFalse(called, "Expected closure to not run")
  }

  static var allTests : [(String, (UnlessTests) -> () throws -> Void)] {
    return [
      ("testItCallsTheGivenClosureIfConditionIsFalse", testItCallsTheGivenClosureIfConditionIsFalse),
      ("testItDoesNotCallTheGivenClosureIfConditionIsTrue", testItDoesNotCallTheGivenClosureIfConditionIsTrue),
      ("testItCallsTheGivenClosureIfAutoclosureConditionIsFalse", testItCallsTheGivenClosureIfAutoclosureConditionIsFalse),
      ("testItDoesNotCallTheGivenClosureIfAutoclosureConditionIsTrue", testItDoesNotCallTheGivenClosureIfAutoclosureConditionIsTrue)
    ]
  }
}

import XCTest
@testable import Unless

class UnlessTests: XCTestCase {
  func testItCallsTheGivenClosureIfConditionIsFalse() {
    var called = false
    unless({ return false }, do: { called = true })
    XCTAssertTrue(called, "Expected closure to run and set called to true")
  }

  func testItDoesNotCallTheGivenClosureIfConditionIsTrue() {
    var called = false
    unless({ return true }, do: { called = true })
    XCTAssertFalse(called, "Expected closure to not run")
  }

  func testWorksWithSwiftImplicitReturn() {
    var called = false
    unless({ false }, do: { called = true })
    XCTAssertTrue(called, "Expected closure to run")
  }

  func testWorksWithSwiftImplicitReturnWithValue() {
    var called = false
    let value = false
    unless({ value }, do: { called = true })
    XCTAssertTrue(called, "Expected closure to run")
  }

  static var allTests : [(String, (UnlessTests) -> () throws -> Void)] {
    return [
      ("testItCallsTheGivenClosureIfConditionIsFalse", testItCallsTheGivenClosureIfConditionIsFalse),
      ("testItDoesNotCallTheGivenClosureIfConditionIsTrue", testItDoesNotCallTheGivenClosureIfConditionIsTrue),
      ("testWorksWithSwiftImplicitReturn", testWorksWithSwiftImplicitReturn),
      ("testWorksWithSwiftImplicitReturnWithValue", testWorksWithSwiftImplicitReturnWithValue)
    ]
  }
}

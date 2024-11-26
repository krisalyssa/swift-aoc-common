/******************************************************************************
 **
 ** Copyright (c) 2023-2024 Kris Cottingham.
 ** Licensed under the MIT License.
 **
 ** See https://github.com/CraigCottingham/swift-aoc-common/blob/main/LICENSE
 ** for license information.
 **
 **/

import XCTest

@testable import Common

class TestInput: XCTestCase {
  func testInitString() throws {
    XCTAssertEqual(Input(data: "foo").rawData, "foo")
  }

  func testInitDay() throws {
    let url = URL(
      fileURLWithPath: "../support", isDirectory: true,
      relativeTo: URL(fileURLWithPath: #file))

    let input = Input(day: 1, relativeTo: url)
    XCTAssertEqual(input.asIntArray(), [123, 456, 789])
  }

  func testRawData() throws {
    XCTAssertEqual(stringListInput().rawData, "foo\nbar\nbaz")
  }

  func testAsCharacterArray() throws {
    XCTAssertEqual(Input(data: "foo").asCharacterArray(), ["f", "o", "o"])
  }

  func testAsIntArray() throws {
    XCTAssertEqual(intListInput().asIntArray(), [1, 2, 3])
  }

  func testAsString() throws {
    XCTAssertEqual(stringListInput().asString(), "foo\nbar\nbaz")
  }

  func testAsStringArray() throws {
    XCTAssertEqual(stringListInput().asStringArray(), ["foo", "bar", "baz"])
  }

  // helper functions

  func makeInput(_ fileName: String) -> Input {
    let dataFileURL = URL(
      fileURLWithPath: fileName,
      relativeTo: URL(fileURLWithPath: "../support", relativeTo: URL(fileURLWithPath: #file))
    ).standardizedFileURL
    let input = Input(fromURL: dataFileURL)
    XCTAssertNotNil(input)
    return input
  }

  func intListInput() -> Input {
    return makeInput("int-list.txt")
  }

  func stringListInput() -> Input {
    return makeInput("string-list.txt")
  }
}

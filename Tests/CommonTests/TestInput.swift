/******************************************************************************
 **
 ** Copyright (c) 2023 Craig S. Cottingham
 ** Licensed under the MIT License.
 **
 ** See https://github.com/CraigCottingham/swift-aoc-common/blob/main/LICENSE
 ** for license information.
 **
 **/

import XCTest

@testable import Common

class TestInput: XCTestCase {
  func makeInput(_ fileName: String) -> Input {
    let dataFileURL = URL(
      fileURLWithPath: fileName,
      relativeTo: URL(fileURLWithPath: "support", relativeTo: URL(fileURLWithPath: #file))
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

  func testInitString() throws {
    XCTAssertEqual(Input(data: "foo").rawData, "foo")
  }

  func testRawData() throws {
    XCTAssertEqual(stringListInput().rawData, "foo\nbar\nbaz")
  }

  func testAsString() throws {
    XCTAssertEqual(stringListInput().asString(), "foo\nbar\nbaz")
  }

  func testAsStringArray() throws {
    XCTAssertEqual(stringListInput().asStringArray(), ["foo", "bar", "baz"])
  }

  func testAsIntArray() throws {
    XCTAssertEqual(intListInput().asIntArray(), [1, 2, 3])
  }
}

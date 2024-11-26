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

@testable import Collections

class TestCountingSet: XCTestCase {
  func testInitWithMinimumCapacity() throws {
    XCTAssertNotNil(CountingSet<String>(minimumCapacity: 3))
  }

  func testInitWithArrayLiteral() throws {
    let s = CountingSet<String>(["foo", "bar", "baz"])
    XCTAssertFalse(s.isEmpty)
    XCTAssertEqual(s.count, 3)
    XCTAssertEqual(s["foo"], 1)
    XCTAssertEqual(s["bar"], 1)
    XCTAssertEqual(s["baz"], 1)
  }

  func testInitWithArrayLiteralWithRepeats() throws {
    let s = CountingSet<String>(["foo", "bar", "foo"])
    XCTAssertFalse(s.isEmpty)
    XCTAssertEqual(s.count, 2)
    XCTAssertEqual(s["foo"], 2)
    XCTAssertEqual(s["bar"], 1)
  }

  func testInitWithString() throws {
    let s = CountingSet<String.Element>("abca")
    XCTAssertFalse(s.isEmpty)
    XCTAssertEqual(s.count, 3)
    XCTAssertEqual(s["a"], 2)
    XCTAssertEqual(s["b"], 1)
    XCTAssertEqual(s["c"], 1)
  }

  func testInsert() throws {
    var s = CountingSet<String>(["foo", "bar"])
    var inserted: Bool
    var member: String?

    (inserted, member) = s.insert("baz")
    XCTAssertTrue(inserted)
    XCTAssertNotNil(member)
    XCTAssertEqual(member, "baz")
    XCTAssertEqual(s["baz"], 1)

    (inserted, member) = s.insert("foo")
    XCTAssertTrue(inserted)
    XCTAssertNotNil(member)
    XCTAssertEqual(member, "foo")
    XCTAssertEqual(s["foo"], 2)
  }

  func testUnion() throws {
    let lhs = CountingSet<String>(["foo", "bar", "foo"])
    let rhs = CountingSet<String>(["foo", "bar", "baz"])
    let u = lhs.union(rhs)

    // assert that u is the union of lhs and rhs
    XCTAssertEqual(u["foo"], 3)
    XCTAssertEqual(u["bar"], 2)
    XCTAssertEqual(u["baz"], 1)

    // assert that lhs is unmodified
    XCTAssertEqual(lhs["foo"], 2)
    XCTAssertEqual(lhs["bar"], 1)
  }
}

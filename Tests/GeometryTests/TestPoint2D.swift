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

@testable import Geometry

class TestPoint2D: XCTestCase {
  func testManhattanDistance() throws {
    XCTAssertEqual(Point2D(x: 1, y: 2).manhattanDistance(Point2D(x: 4, y: 3)), 4)
  }
}

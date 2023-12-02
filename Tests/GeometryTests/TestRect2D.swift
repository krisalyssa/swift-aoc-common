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

@testable import Geometry

class TestRect2D: XCTestCase {
  let rect = Rect2D(topLeft: Point2D(x: 1, y: 2), bottomRight: Point2D(x: 4, y: 3))

  func testMinX() throws {
    XCTAssertEqual(rect.minX(), 1)
  }

  func testMaxX() throws {
    XCTAssertEqual(rect.maxX(), 4)
  }
  func testMinY() throws {
    XCTAssertEqual(rect.minY(), 2)
  }

  func testMaxY() throws {
    XCTAssertEqual(rect.maxY(), 3)
  }

  func testWidth() throws {
    XCTAssertEqual(rect.width(), 3)
  }

  func testHeight() throws {
    XCTAssertEqual(rect.height(), 1)
  }

  func testGridPoints() throws {
    let grid = rect.gridPoints()
    XCTAssertTrue(grid.contains(Point2D(x: 1, y: 2)))
    XCTAssertTrue(grid.contains(Point2D(x: 4, y: 2)))
    XCTAssertFalse(grid.contains(Point2D(x: 5, y: 2)))
    XCTAssertTrue(grid.contains(Point2D(x: 1, y: 3)))
    XCTAssertFalse(grid.contains(Point2D(x: 1, y: 4)))
  }

  func testEdgePoints() throws {
    let edges = rect.edgePoints()
    XCTAssertTrue(edges.contains(Point2D(x: 1, y: 1)))
    XCTAssertTrue(edges.contains(Point2D(x: 1, y: 2)))
    XCTAssertFalse(edges.contains(Point2D(x: 2, y: 2)))
  }
}

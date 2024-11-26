/******************************************************************************
 **
 ** Copyright (c) 2023-2024 Kris Cottingham.
 ** Licensed under the MIT License.
 **
 ** See https://github.com/CraigCottingham/swift-aoc-common/blob/main/LICENSE
 ** for license information.
 **
 **/

public struct Rect2D: Hashable {
  public let topLeft: Point2D
  public let bottomRight: Point2D

  public init(topLeft: Point2D, bottomRight: Point2D) {
    self.topLeft = topLeft
    self.bottomRight = bottomRight
  }

  public func minX() -> Int { return topLeft.x }
  public func minY() -> Int { return topLeft.y }
  public func maxX() -> Int { return bottomRight.x }
  public func maxY() -> Int { return bottomRight.y }

  public func width() -> Int { return bottomRight.x - topLeft.x }
  public func height() -> Int { return bottomRight.y - topLeft.y }

  public func gridPoints() -> [Point2D] {
    var grid: [Point2D] = []

    for y in minY()...maxY() {
      for x in minX()...maxX() {
        grid.append(Point2D(x: x, y: y))
      }
    }

    return grid
  }

  public func edgePoints() -> [Point2D] {
    ((minX()...maxX()).flatMap { [Point2D(x: $0, y: minY()), Point2D(x: $0, y: maxY())] }
      + (minY()...maxY()).flatMap { [Point2D(x: minX(), y: $0), Point2D(x: maxX(), y: $0)] })
  }
}

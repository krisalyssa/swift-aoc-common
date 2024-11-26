/******************************************************************************
 **
 ** Copyright (c) 2023-2024 Kris Cottingham.
 ** Licensed under the MIT License.
 **
 ** See https://github.com/CraigCottingham/swift-aoc-common/blob/main/LICENSE
 ** for license information.
 **
 **/

public struct Point2D: Hashable {
  public let x: Int
  public let y: Int

  public init(x: Int, y: Int) {
    self.x = x
    self.y = y
  }

  public func manhattanDistance(_ other: Point2D) -> Int {
    return abs(other.x - self.x) + abs(other.y - self.y)
  }
}

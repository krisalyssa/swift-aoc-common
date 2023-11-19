/******************************************************************************
 **
 ** Copyright (c) 2023 Craig S. Cottingham
 ** Licensed under the MIT License.
 **
 ** See https://github.com/CraigCottingham/swift-aoc-common/blob/main/LICENSE
 ** for license information.
 **
 **/

import Foundation

public protocol Day {
  func run(day: Int) throws
  func part1(_ input: Input) throws
  func part2(_ input: Input) throws
}

extension Day {
  public func run(day: Int) throws {
    let input = Input(
      day: day,
      relativeTo: URL(
        fileURLWithPath: "../../..", isDirectory: true, relativeTo: URL(fileURLWithPath: #file)))

    try part1(input)
    try part2(input)
  }

  public func part1(_ input: Input) throws {
    fatalError("function \(#function) needs to be implemented")
  }

  public func part2(_ input: Input) throws {
    fatalError("function \(#function) needs to be implemented")
  }
}

/******************************************************************************
 **
 ** Copyright (c) 2023-2024 Kris Cottingham.
 ** Licensed under the MIT License.
 **
 ** See https://github.com/CraigCottingham/swift-aoc-common/blob/main/LICENSE
 ** for license information.
 **
 **/

import Foundation

public class Input {
  var rawData: String?

  public init(data: String) {
    rawData = data
  }

  public init(fromURL: URL) {
    rawData = try? String(contentsOf: fromURL)
  }

  // relativeTo should be the directory containing the "data" directory
  public init(day: Int, relativeTo: URL) {
    let callingFileURL = URL(fileURLWithPath: ".", relativeTo: relativeTo)
    let dataDirectoryURL = URL(
      fileURLWithPath: "data", isDirectory: true, relativeTo: callingFileURL)
    let dataFileName = String(format: "%02d.txt", day)
    let dataURL = URL(fileURLWithPath: dataFileName, relativeTo: dataDirectoryURL)
      .standardizedFileURL

    rawData = try? String(contentsOf: dataURL)
  }

  public func asCharacterArray() -> [Character] {
    return Array(rawData!)
  }

  public func asIntArray() -> [Int] {
    return asStringArray().map { Int($0)! }
  }

  public func asString() -> String {
    return rawData!
  }

  public func asStringArray() -> [String] {
    return rawData!.split(separator: "\n").map { String($0) }
  }
}

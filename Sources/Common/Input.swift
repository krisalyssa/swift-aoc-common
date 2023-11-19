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

public class Input {
  var rawData: String?

  public init(data: String) {
    rawData = data
  }

  public init(fromURL: URL) {
    rawData = try? String(contentsOf: fromURL)
  }

  public init(day: Int, relativeTo: String) {
    let callingFileURL = URL.init(fileURLWithPath: relativeTo)
    let dataDirectoryURL = URL.init(fileURLWithPath: "../../../data", relativeTo: callingFileURL)
    let dataFileName = String(format: "%02d.txt", day)
    let dataURL = URL.init(fileURLWithPath: dataFileName, relativeTo: dataDirectoryURL)
      .standardizedFileURL
    rawData = try? String(contentsOf: dataURL)
  }

  public func asString() -> String {
    return rawData!
  }

  public func asStringArray() -> [String.SubSequence] {
    return rawData!.split(separator: "\n")
  }

  public func asIntArray() -> [Int] {
    return asStringArray().map { Int.init($0)! }
  }
}

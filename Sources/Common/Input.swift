import Foundation

public class Input {
  var rawData: String?

  public init(data: String) {
    rawData = data
  }

  public init(fromURL: URL) {
    rawData = try? String(contentsOf: fromURL)
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

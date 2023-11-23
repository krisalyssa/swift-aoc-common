/******************************************************************************
 **
 ** Copyright (c) 2023 Craig S. Cottingham
 ** Licensed under the MIT License.
 **
 ** See https://github.com/CraigCottingham/swift-aoc-common/blob/main/LICENSE
 ** for license information.
 **
 ** Borrowed heavily from
 ** https://github.com/davedelong/AOC/blob/68a2d29c093a50980ed04786d172c54b267a191b/Sources/AOCCore/Data%20Structures/CountingSet.swift
 **
 **/

public typealias CountingSet<Key: Hashable> = [Key: Int]

extension Dictionary where Value == Int {
  public init(_ other: [Key: Value]) {
    self.init(uniqueKeysWithValues: zip(other.keys, other.values))
  }

  public init<C: Collection>(_ other: C) where C.Element == Key {
    self.init(minimumCapacity: other.count)
    for k in other {
      self[k, default: 0] += 1
    }
  }

  @discardableResult
  public mutating func insert(_ k: Key) -> (inserted: Bool, memberAfterInsert: Key) {
    self[k, default: 0] += 1
    return (true, k)
  }

  public func union(_ other: Self) -> Self {
    var this = Self()

    for (k, v) in self {
      this[k, default: 0] += v
    }

    for (k, v) in other {
      this[k, default: 0] += v
    }

    return this
  }
}

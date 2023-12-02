// from https://developer.apple.com/documentation/swift/additivearithmetic
extension Sequence where Element: AdditiveArithmetic {
  public func sum() -> Element {
    return reduce(.zero, +)
  }
}

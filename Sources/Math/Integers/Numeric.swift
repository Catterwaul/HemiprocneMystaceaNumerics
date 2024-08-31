public extension Numeric {
  @inlinable var squared: Self { self * self }

  /// Raise this base to a `power`.
  @inlinable func toThe<Power: UnsignedInteger>(_ power: Power) -> Self
  where Power.Stride: SignedInteger {
    (0..<power).reduce(1) { power, _ in power * self }
  }
}

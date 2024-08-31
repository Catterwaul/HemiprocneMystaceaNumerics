public extension FloatingPoint {
  /// Whether this is the closest possible representation of an integer.
  @inlinable var isInteger: Bool { rounded() == self }
  
  /// A "quantized" value.
  @inlinable func rounded(
    toNearestMultipleOf step: Self,
    roundingRule: FloatingPointRoundingRule = .toNearestOrAwayFromZero
  ) -> Self {
    (self / step).rounded(roundingRule) * step
  }
}

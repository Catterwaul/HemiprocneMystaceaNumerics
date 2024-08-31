import RealModule

infix operator ÷: MultiplicationPrecedence

public struct DivisionByZeroError<Numerator: Numeric & Sendable>: Error {
  public let numerator: Numerator
  
  @usableFromInline init(numerator: Numerator) {
    self.numerator = numerator
  }
}

public extension BinaryInteger where Self: Sendable {
  /// Division which throws an error with zero in the denominator.
  @inlinable static func ÷ (numerator: Self, denominator: Self) throws(DivisionByZeroError<Self>) -> Self {
    guard denominator != 0 else { throw DivisionByZeroError(numerator: numerator) }
    return numerator / denominator
  }
}

public extension AlgebraicField where Self: Sendable {
  /// Division which throws an error with zero in the denominator.
  @inlinable static func ÷ (numerator: Self, denominator: Self) throws(DivisionByZeroError<Self>) -> Self {
    guard denominator != 0 else { throw DivisionByZeroError(numerator: numerator) }
    return numerator / denominator
  }
}

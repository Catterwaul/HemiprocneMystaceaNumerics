public extension AdditiveArithmetic where Self: ExpressibleByIntegerLiteral {
  /// A sequence in which each number is the sum of the two preceding ones.
  @inlinable static func fibonacciSequence(_ startingNumbers: (Self, Self) = (0, 1)) -> some Sequence<Self> {
    sequence(state: startingNumbers) { numbers in
      defer { numbers = (numbers.1, numbers.0 + numbers.1) }
      return numbers.0
    }
  }
}

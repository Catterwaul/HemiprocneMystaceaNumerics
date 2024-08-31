import Thrappture

public extension FixedWidthInteger {
  /// A random value between `min` and `max`, inclusive.
  @inlinable static var random: Self { random(in: min...max) }
}

public extension Sequence where Element: FixedWidthInteger {
  /// An integer created by stringing other integers together sequentially.
  /// - Parameter radix: The radix, or base, to use for converting `text` to an integer value.
  /// - Precondition: `radix` must be in the range `2...36`.
  /// - Throws: `Integer?.Nil`
  @inlinable func joined<Integer: FixedWidthInteger>(radix: Int = 10) throws -> Integer {
    try _joined(radix: radix)
  }

  /// An integer created by stringing other integers together sequentially.
  /// - Parameter radix: The radix, or base, to use for converting `text` to an integer value.
  /// - Precondition: `radix` must be in the range `2...36`.
  /// - Throws: `Integer?.Nil`
  @inlinable func joined(radix: Int = 10) throws -> Int {
    try _joined(radix: radix)
  }
}

extension Sequence where Element: FixedWidthInteger {
  @usableFromInline func _joined<Integer: FixedWidthInteger>(radix: Int = 10) throws -> Integer {
    try .init(
      map { String($0, radix: radix) } .joined(),
      radix: radix
    ).get()
  }
}

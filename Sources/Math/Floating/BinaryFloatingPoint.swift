extension BinaryFloatingPoint {
  @inlinable static var exponentBias: Int { 1 << (exponentBitCount - 1) }
}

protocol BinaryFloatingPoint_exponentBias {
  @inlinable static var exponentBias: Int { get }
}

extension Double: BinaryFloatingPoint_exponentBias { }
extension Float: BinaryFloatingPoint_exponentBias { }

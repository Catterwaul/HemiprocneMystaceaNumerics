import HMNumerics
import Testing
import Thrappture

struct FixedWidthIntegerTests {
  @Test func joined() throws {
    #expect(try [1, 2].joined() == 12)
    #expect(try [1, 0b10].joined(radix: 0b10) as UInt8 == 0b110)
    #expect(try [1, 0x10].joined(radix: 0x10) as Int16  == 0x110)

    #expect(throws: UInt8?.Nil.self) { try [1 << 8].joined(radix: 2) as UInt8 }
  }
}

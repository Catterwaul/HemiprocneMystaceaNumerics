import HMNumerics
import Testing

struct UnsignedIntegerTests {
  @Test func digits() {
    #expect(
      (867_5309 as UInt32).digits()
      == [8,6,7, 5,3,0,9]
    )
    #expect(
      (0x00_F0 as UInt8).digits(radix: 0b10)
      == [1,1,1,1, 0,0,0,0]
    )
    #expect(
      (0xA0_B1_C2_D3_E4_F5 as UInt).digits(radix: 0x10)
      == [10,0, 11,1, 12,2, 13,3, 14,4, 15,5]
    )
    #expect(
      (0o0707 as UInt16).digits(radix: 0o10)
      == [0b111, 0, 0b111]
    )
  }
}

import typealias CoreGraphics.CGFloat
import HMNumerics
import Testing

struct FloatingPointTests {
  @Test func isInteger() {
    #expect(1.0.isInteger)
    #expect(!(1.1 as CGFloat).isInteger)
  }

  @Test func rounded() {
    #expect(Float16(0.16).rounded(toNearestMultipleOf: 1) == 0)
    #expect(-4.9.rounded(toNearestMultipleOf: 2) == -4)
    #expect(Float.pi.rounded(toNearestMultipleOf: 3) == 3)
  }
}

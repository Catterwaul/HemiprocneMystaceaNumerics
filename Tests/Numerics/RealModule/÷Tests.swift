import HMNumerics
import Testing

struct DivideTests {
  @Test func algebraicField() throws {
    let numerator = Double.random(in: -100...100)
    #expect(try 0 ÷ numerator == 0)
    #expect { try numerator ÷ 0 } throws: { error in
      (error as? DivisionByZeroError)?.numerator == numerator
    }
  }

  @Test func binaryInteger() throws {
    let numerator = Int.random
    #expect(try 0 ÷ numerator == 0)
    #expect { try numerator ÷ 0 } throws: { error in
      (error as? DivisionByZeroError)?.numerator == numerator
    }
  }
}

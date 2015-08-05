require('rspec')
require('scrabble')

describe("Hash#score") do
  it("returns a scrabble score for a letter") do
    expect(("A").score()).to(eq(1))
  end
  it("returns error if not single error input or special character/number")
    expect(("1").score()).to(eq("error."))
end

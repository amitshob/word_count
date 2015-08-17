require('rspec')
require('wordcount')

describe('String#wordcount') do
  it("makes lower case the entire String Input word") do
    expect(("Big").wordcount()).to(eq("big"))
  end
  it("makes lower case the entire Word Input word") do
    expect(("Big").wordcount()).to(eq("big"))
  end
  it("makes lower case the all the words in the String Input sentence") do
    expect(("The ColoR pUrple").wordcount()).to(eq("the color purple"))
  end
  it("counts the number of times Word Input occurs in String Input") do
    expect(("the big dog in the big house").wordcount("big")).to(eq(2))
  end
end

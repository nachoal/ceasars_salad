require_relative '../encrypt'

describe "#encrypt" do
  it "returns an empty string when you send an empty string" do
    result = encrypt("")

    expect(result).to eq("")
  end

  it "returns an encrpyted message correctly" do
    result = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")

    expect(result).to eq("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")
  end
end
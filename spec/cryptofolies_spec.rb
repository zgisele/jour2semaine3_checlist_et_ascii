# frozen_string_literal: true

require_relative '../lib/cryptofolies'

describe "the caesar_cipher method" do
  it "should correctly encrypt a string with a given key" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it "should handle wrapping from z to a" do
    expect(caesar_cipher("xyz", 3)).to eq("abc")
  end

  it "should maintain the case of the letters" do
    expect(caesar_cipher("Hello, World!", 3)).to eq("Khoor, Zruog!")
  end

  it "should ignore non-letter characters" do
    expect(caesar_cipher("123!", 3)).to eq("123!")
  end
end

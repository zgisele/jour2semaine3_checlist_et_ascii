# frozen_string_literal: true

require_relative '../lib/multiple_de_3_et_5'

describe "the multiple_of_3_or_5? function" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(multiple_of_3_or_5?(3)).to eq(true)
    expect(multiple_of_3_or_5?(5)).to eq(true)
    expect(multiple_of_3_or_5?(51)).to eq(true)
    expect(multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(multiple_of_3_or_5?(2)).to eq(false)
    expect(multiple_of_3_or_5?(7)).to eq(false)
    expect(multiple_of_3_or_5?(64)).to eq(false)
  end
end

describe "the sum_of_3_or_5_multiples method" do
  it "should return the sum of multiples of 3 or 5 below a given number" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
  end

  it "should return 0 for numbers less than 3" do
    expect(sum_of_3_or_5_multiples(0)).to eq(0)
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
  end

  it "should return an error message for non-natural numbers" do
    expect(sum_of_3_or_5_multiples(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG.")
    expect(sum_of_3_or_5_multiples(1.23)).to eq("Yo ! Je ne prends que les entiers naturels. TG.")
    expect(sum_of_3_or_5_multiples("chiffre")).to eq("Yo ! Je ne prends que les entiers naturels. TG.")
  end
end

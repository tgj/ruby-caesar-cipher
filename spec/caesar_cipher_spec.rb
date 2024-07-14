require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe "Caesar Cipher Exercises" do
  describe "forward cipher" do
    it "returns cipher specifying positive shift factor" do
      cipher = caesar_cipher("What a string!", 5)
      result = "Bmfy f xywnsl!"
      expect(cipher).to eq(result)
    end

    it "returns cipher specifying positive shift factor" do
      cipher = caesar_cipher("hello world", 3)
      result = "khoor zruog"
      expect(cipher).to eq(result)
    end
  end
end

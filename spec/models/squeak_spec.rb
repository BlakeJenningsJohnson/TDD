require 'spec_helper'

describe Squeak do
  let!(:squeak) {create(:squeak)}

  describe "validations" do

    it "is valid" do
      expect(:squeak).to be_valid
    end

    it "has to have text" do
      expect(create(:squeak, body: nil)).to_not be_valid
    end

    it "has to have a user" do
      expect(create(:squeak, user: nil)).to_not be_valid
    end

    it "must be shorter than 141 char" do
      expect(create(:squeak, body: "a" * 141)).to_not be_valid
    end

    it "with a nil body has an error message" do
      squeak = Squeak.new
      squeak.valid?
      expect(squeak.errors[:body]).to include "can't be blank"
    end
  end
end

require 'spec_helper'

describe Squeak do
  let!(:squeak) {create(:squeak)}

  describe "validations" do

    it "is valid" do
      expect(build(:squeak)).to be_valid
    end

    it "has to have text" do
      expect(build(:squeak, body: nil)).to be_invalid
    end

    it "has to have a user" do
      expect(build(:squeak, user: nil)).to_not be_valid
    end

    it "must be shorter than 141 char" do
      expect(build(:squeak, body: "a" * 141)).to be_invalid
    end
  end
end

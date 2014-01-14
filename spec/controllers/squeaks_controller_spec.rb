require 'spec_helper' 

describe SqueaksController do

  describe "get index" do
    let!(:squeak) {create(:squeak)}

    it "is successful" do
      get :index
      expect(response).to be_successful
    end

    it "assigns @tweets" do
      get :index
      expect(assigns(:squeaks).first).to be_an_instance_of Squeak
    end
  end
end



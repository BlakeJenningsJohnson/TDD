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

  describe "POST create" do

    it "is successful" do 
      post :create, squeak: {user: "Todd", body: "lalala"}
      expect(response).to redirect_to squeaks_path(assigns(:squeak).id)
    end
  end

  context "when invalid" do

    it "is unsuccessful but still redirects" do
      post :create, squeak: {user: "Benny", body: nil}
      expect(response).to render_template :index
    end
  end
end



    #assigns is same as @book in controller, since instance variables don't carry over, so it's checking HTTP for this
#     it "assigns @book to be a valid Book" do
#       post :create, book: {title: "The Last Unicorn"}
#       expect(assigns(:book)).to be_valid
#     end

#     context "when invalid" do

#       it "renders the :new template" do
#         post :create, book: {title: nil}
#         expect(response).to render_template :new
#       end
#     end
#   end
# end
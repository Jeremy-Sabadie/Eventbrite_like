require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #Home" do
    it "returns http success" do
      get :Home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #Contact" do
    it "returns http success" do
      get :Contact
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #About" do
    it "returns http success" do
      get :About
      expect(response).to have_http_status(:success)
    end
  end

end

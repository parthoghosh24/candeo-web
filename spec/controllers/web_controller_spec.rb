require 'rails_helper'

RSpec.describe WebController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #terms" do
    it "returns http success" do
      get :terms
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #user" do
    it "returns http success" do
      get :user
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #content" do
    it "returns http success" do
      get :content
      expect(response).to have_http_status(:success)
    end
  end

end

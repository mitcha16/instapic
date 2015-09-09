require 'rails_helper'
describe SessionsController do

  before do
    request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:instagram]
  end

  describe "#create" do

    it "should successfully create a user" do
      expect {
        post :create, provider: :instagram
      }.to change{ User.count }.by(1)
    end

    it "should successfully create a session" do
      expect(session[:user_id]).to eq(nil)
      post :create, provider: :instagram
      expect(session[:user_id]).to_not eq(nil)
    end

    it "should redirect the user to the root url" do
      post :create, provider: :instagram
      response.should redirect_to root_url
    end

  end

  describe "#destroy" do
    before do
      post :create, provider: :instagram
    end

    it "should clear the session" do
      session[:user_id].should_not be_nil
      delete :destroy
      session[:user_id].should be_nil
    end

    it "should redirect to the home page" do
      delete :destroy
      response.should redirect_to root_url
    end
  end

end

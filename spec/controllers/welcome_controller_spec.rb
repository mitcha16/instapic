require 'rails_helper'

describe WelcomeController do
  it "can get #index" do
    get 'index'
    expect(response).to be_success
  end
end

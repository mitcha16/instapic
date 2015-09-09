require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it "can get #show" do
    get 'show'
    expect(response).to be_success
  end
end

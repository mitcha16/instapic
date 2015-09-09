require 'rails_helper'

describe 'a user can visit the homepage' do

  before do
    visit root_path
  end

  it 'can see the header' do
    expect(page).to have_content("InstaPic")
  end

  it "can see login if user is not loggin in" do
    expect(page).to have_content("Login")
  end
end

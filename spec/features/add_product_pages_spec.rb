require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd', admin: true)
    visit new_user_registration_path
    login_as(user, :scope => :admin)
    click_link 'Create new product'
    fill_in 'Name', :with => 'Kangaroo'
    fill_in 'Cost', :with => '3'
    fill_in 'Country of origin', :with => 'Canada'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Kangaroo'
  end

  it "gives an error when no name is entered" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd', admin: true)
    login_as(user, :scope => :user)
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end
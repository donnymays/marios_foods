require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
   @user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd', :password_confirmation => 'f4k3p455w0rd', admin: true)
    visit root_path
    click_link 'Sign In!'
    fill_in 'Email', :with => 'test@example.com'
    fill_in 'Password', :with => 'f4k3p455w0rd'
    click_button 'Log in'
    click_link 'Check out our Inventory!'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Kangaroo'
    fill_in 'Cost', :with => '3'
    fill_in 'Country of origin', :with => 'Canada'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Kangaroo'
  end

#   it "gives an error when no name is entered" do
#     @user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd', admin: true)
#     login_as(@user, :scope => :user)
#     visit new_product_path
#     click_on 'Create Product'
#     expect(page).to have_content "Name can't be blank"
#   end
end

require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    @user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd', :password_confirmation => 'f4k3p455w0rd', admin: true)
    @product = Product.create!(name: "Arugula", cost: 0.5594e2, country_of_origin: "King's Landing")
    @review = Review.create!(author: "Donny", content: "Tilde plaid vinegar venmo 3 wolf moon locavore occ...", rating: 2, product_id: @product.id)
    visit root_path
    click_link 'Sign In!'
    fill_in 'Email', :with => 'test@example.com'
    fill_in 'Password', :with => 'f4k3p455w0rd'
    click_button 'Log in'
    click_link 'Check out our Inventory!'
    click_link 'Arugula'
    expect(page).to have_content 'vinegar venmo'
  end
end



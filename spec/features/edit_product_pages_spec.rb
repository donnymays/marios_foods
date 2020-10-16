require 'rails_helper'

describe "the update a product process" do
  it "updates product" do
   
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'Kangaroo'
    fill_in 'Cost', :with => '3'
    fill_in 'Country of origin', :with => 'Canada'
    click_on 'Create Product'
    click_on 'Kangaroo'
    click_on 'Edit'
    fill_in 'Name', :with => 'Venison'
    click_on 'Update Product'
    expect(page).to have_content 'Product successfully updated!'
    expect(page).to have_content 'Venison'
  end
end
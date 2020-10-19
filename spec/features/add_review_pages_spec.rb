require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'Kangaroo'
    fill_in 'Cost', :with => '3'
    fill_in 'Country of origin', :with => 'Canada'
    click_on 'Create Product'
    click_on 'Add a review'
    save_and_open_page
    fill_in 'Your name', :with => 'Jaques'
    fill_in 'Content', :with => 'A statement that is at least 50 characters long, something like this should do it.'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content 'A statement that is at leas'
  end
  
  it "gives an error when content is too short" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'Kangaroo'
    fill_in 'Cost', :with => '3'
    fill_in 'Country of origin', :with => 'Canada'
    click_on 'Create Product'
    click_on 'Add a review'
    fill_in 'Your name', :with => 'Jaques'
    fill_in 'Content', :with => 'A statement'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content 'Content is too short'
  end
end



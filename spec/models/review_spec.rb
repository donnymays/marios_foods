require 'rails_helper'

describe Review do
  it { should belong_to(:product) }
  it { should validate_length_of(:content) }
  it { should validate_presence_of(:author) }
  it { should validate_numericality_of(:rating) }
end
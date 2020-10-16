class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true

  before_save(:titleize_product)
  
  scope :most_recent, -> { order(created_at: :desc).limit(3) }

  scope :search, -> (name_parameter) { where("LOWER(name) like ?", "%#{name_parameter.downcase}%") }

  private
    def titleize_product
      self.name = self.name.titleize
    end

    def self.most_reviewed 
      @products = Product.all
      review_arr = []
      @products.each do |product|
        review_arr << product.reviews
      end
    Product.find(review_arr.max_by(&:length)[0].product_id)
    end
end


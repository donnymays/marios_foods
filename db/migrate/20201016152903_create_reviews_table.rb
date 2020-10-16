class CreateReviewsTable < ActiveRecord::Migration[5.2]

  def change
    create_table :reviews do |t|
      t.string :author
      t.string :content
      t.integer :rating

      t.timestamps
    end
  end
end

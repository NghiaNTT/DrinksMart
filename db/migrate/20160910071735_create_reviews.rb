class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :drink, index: true, foreign_key: true
      t.string :content
      t.integer :rate
      t.timestamps
    end
  end
end

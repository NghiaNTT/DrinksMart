class CreateFavoriteLists < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_lists do |t|
      t.references :user, index: true, foreign_key: true
      t.references :drink, index: true, foreign_key: true
      t.timestamps
    end
  end
end

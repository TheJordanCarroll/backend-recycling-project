class CreateItemCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :item_categories do |t|
      t.integer :category_id
      t.integer :item_id

      t.timestamps
    end
  end
end

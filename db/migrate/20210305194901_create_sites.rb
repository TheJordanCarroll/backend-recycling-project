class CreateSites < ActiveRecord::Migration[6.1]
  def change
    create_table :sites do |t|
      t.string :address
      t.string :borough
      t.string :name
      t.string :website
      t.string :latitude
      t.string :longitude
      t.integer :rating
      t.string :accepted_items
      t.string :image
      t.string :hours
      t.string :twitter
      t.string :ig
      t.string :facebook

      t.timestamps
    end
  end
end

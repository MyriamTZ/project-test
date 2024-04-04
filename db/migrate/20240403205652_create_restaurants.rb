class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :city
      t.string :category
      t.string :address
      t.text :description
      t.string :chief

      t.timestamps
    end
  end
end

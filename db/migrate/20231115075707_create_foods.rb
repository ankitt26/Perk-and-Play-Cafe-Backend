class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :price
      t.integer :cooking_time
      t.integer :quantity

      t.timestamps
    end
  end
end

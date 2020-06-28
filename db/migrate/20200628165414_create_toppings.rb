class CreateToppings < ActiveRecord::Migration[6.0]
  def change
    create_table :toppings do |t|
      t.string :name 
      t.integer :createpizza_id
      t.float :price

      t.timestamps
    end
  end
end

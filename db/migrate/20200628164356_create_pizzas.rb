class CreatePizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :topping
      t.float :price
      t.string :size
      t.string :image
      t.timestamps
    end
  end
end

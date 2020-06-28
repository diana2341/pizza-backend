class CreateCreatepizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :createpizzas do |t|
      t.string :name
      t.integer :user_id
      t.integer :topping_id
      t.float :price
      t.string :size
      t.timestamps
    end
  end
end

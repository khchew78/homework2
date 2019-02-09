class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :food_name, null: false
      t.decimal :price, precision: 8, scale: 2 

      t.timestamps
    end
  end
end

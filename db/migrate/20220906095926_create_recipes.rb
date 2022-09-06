class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
     t.string :dish_name,   null: false
     t.text :cook_method,   null: false

      t.timestamps
    end
  end
end

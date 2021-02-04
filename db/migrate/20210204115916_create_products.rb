class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.integer :maker_name

      t.timestamps
    end
  end
end

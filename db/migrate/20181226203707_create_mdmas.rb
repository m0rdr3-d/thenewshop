class CreateMdmas < ActiveRecord::Migration[5.2]
  def change
    create_table :mdmas do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :avatar

      t.timestamps
    end
  end
end

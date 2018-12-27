class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :quantity
      t.string :email

      t.timestamps
    end
  end
end

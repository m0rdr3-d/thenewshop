class CreateSynthCannabinoids < ActiveRecord::Migration[5.2]
  def change
    create_table :synth_cannabinoids do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :avatar

      t.timestamps
    end
  end
end

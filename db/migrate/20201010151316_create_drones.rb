class CreateDrones < ActiveRecord::Migration[6.0]
  def change
    create_table :drones do |t|
      t.references :user, null: false, foreign_key: true
      t.string :model
      t.integer :autonomy
      t.integer :maximum_distance
      t.integer :carry_capacity
      t.integer :delivery_price

      t.timestamps
    end
  end
end

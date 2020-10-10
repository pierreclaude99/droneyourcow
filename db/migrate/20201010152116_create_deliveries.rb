class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :drone, null: false, foreign_key: true
      t.datetime :delivery_time
      t.string :delivery_address
      t.text :description
      t.integer :weight
      t.string :status

      t.timestamps
    end
  end
end

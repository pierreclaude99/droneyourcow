class AddAdressToDrones < ActiveRecord::Migration[6.0]
  def change
    add_column :drones, :address, :string
  end
end

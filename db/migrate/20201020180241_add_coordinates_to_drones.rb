class AddCoordinatesToDrones < ActiveRecord::Migration[6.0]
  def change
    add_column :drones, :latitude, :float
    add_column :drones, :longitude, :float
  end
end

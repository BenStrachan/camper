class AddNameToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :name, :string
  end
end

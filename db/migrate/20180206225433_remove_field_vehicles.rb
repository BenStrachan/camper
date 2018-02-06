class RemoveFieldVehicles < ActiveRecord::Migration[5.1]
  def change
    remove_column :vehicles, :vmltm_no_brakes
  end
end

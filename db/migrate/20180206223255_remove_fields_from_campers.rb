class RemoveFieldsFromCampers < ActiveRecord::Migration[5.1]
  def change
    remove_column :vehicles, :rev
    remove_column :vehicles, :conditions
    remove_column :vehicles, :vehicle_kerb_mass
    remove_column :vehicles, :gvm
    remove_column :vehicles, :gcm
    remove_column :vehicles, :roof_load
    remove_column :vehicles, :body_type
  end
end

class RemoveFieldsFromCampers < ActiveRecord::Migration[5.1]
  def change
    remove_column :vehicles, :rev, :string
    remove_column :vehicles, :conditions, :string
    remove_column :vehicles, :vehicle_kerb_mass, :string
    remove_column :vehicles, :gvm, :string
    remove_column :vehicles, :gcm, :string
    remove_column :vehicles, :roof_load, :string
    remove_column :vehicles, :body_type, :string
  end
end

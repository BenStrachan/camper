class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_make
      t.string :vehicle_model_title
      t.string :vehicle_model_descritpion
      t.string :start_year
      t.string :end_year
      t.string :rev
      t.string :vmltm_no_brakes
      t.string :vmltm_with_breaks
      t.string :vmltm_balll_mass
      t.string :conditions
      t.string :vehicle_kerb_mass
      t.string :gvm
      t.string :gcm
      t.string :roof_load
      t.string :body_type

      t.timestamps
    end
  end
end

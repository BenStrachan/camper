class RenameOldColumnsVehicles < ActiveRecord::Migration[5.1]
  def change
    rename_column :vehicles, :vmltm_with_breaks, :with_breaks
    rename_column :vehicles, :vmltm_balll_mass, :ball_mass_max
  end
end

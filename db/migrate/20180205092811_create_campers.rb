class CreateCampers < ActiveRecord::Migration[5.1]
  def change
    create_table :campers do |t|
      t.string :brand
      t.string :model
      t.string :version
      t.string :display_price
      t.string :price_min
      t.string :price_max
      t.string :capacity
      t.string :link
      t.string :gvm
      t.string :ball_weight
      t.string :solar
      t.string :roof_rack
      t.string :alloy_wheels
      t.string :all_terrain_tyres
      t.string :mud_tyres
      t.string :twin_spares
      t.string :large_water
      t.string :deep_cycle_batteries
      t.string :diesel_heating
      t.string :air_conditioning
      t.string :tv
      t.string :ensuite
      t.string :hot_water
      t.string :independent_suspension
      t.string :priority

      t.timestamps
    end
  end
end

class CreateCampers < ActiveRecord::Migration[5.1]
  def change
    create_table :campers do |t|
      t.string :brand
      t.string :model
      t.string :version
      t.decimal :display_price, scale: 2
      t.decimal :price_min, scale: 2
      t.decimal :price_max, scale: 2
      t.decimal :capacity, scale: 2
      t.string :link
      t.string :gvm
      t.decimal :ball_weight, scale: 2
      t.boolean :solar
      t.boolean :roof_rack
      t.boolean :alloy_wheels
      t.boolean :all_terrain_tyres
      t.boolean :mud_tyres
      t.boolean :twin_spares
      t.boolean :large_water
      t.boolean :deep_cycle_batteries
      t.boolean :diesel_heating
      t.boolean :air_conditioning
      t.boolean :tv
      t.boolean :ensuite
      t.boolean :hot_water
      t.boolean :independent_suspension
      t.string :priority

      t.timestamps
    end
  end
end

# == Schema Information
#
# Table name: campers
#
#  id                     :integer          not null, primary key
#  brand                  :string
#  model                  :string
#  version                :string
#  display_price          :float
#  price_min              :float
#  price_max              :float
#  capacity               :float
#  link                   :string
#  gvm                    :string
#  ball_weight            :float
#  solar                  :boolean
#  roof_rack              :boolean
#  alloy_wheels           :boolean
#  all_terrain_tyres      :boolean
#  mud_tyres              :boolean
#  twin_spares            :boolean
#  large_water            :boolean
#  deep_cycle_batteries   :boolean
#  diesel_heating         :boolean
#  air_conditioning       :boolean
#  tv                     :boolean
#  ensuite                :boolean
#  hot_water              :boolean
#  independent_suspension :boolean
#  priority               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  type_a                 :string
#  type_b                 :string
#  type_c                 :string
#  atm                    :string
#  tare                   :decimal(, )
#

class Camper < ApplicationRecord
  INCLUSIONS = [
    "Solar Panel",
    "Roof racks",
    "Alloy wheels",
    "All terrain types",
    "Mud tires",
    "Twin spare",
    "100L+ Water Storage",
    "Deep Cycle Batteries",
    "Diesel Heating",
    "Air Conditioning",
    "Television Screen",
    "Ensuite Facilities",
    "Hot Water System",
    "Independent Suspension"
  ]
end

# == Schema Information
#
# Table name: campers
#
#  id                     :integer          not null, primary key
#  brand                  :string
#  model                  :string
#  version                :string
#  display_price          :string
#  price_min              :string
#  price_max              :string
#  capacity               :string
#  link                   :string
#  gvm                    :string
#  ball_weight            :string
#  solar                  :string
#  roof_rack              :string
#  alloy_wheels           :string
#  all_terrain_tyres      :string
#  mud_tyres              :string
#  twin_spares            :string
#  large_water            :string
#  deep_cycle_batteries   :string
#  diesel_heating         :string
#  air_conditioning       :string
#  tv                     :string
#  ensuite                :string
#  hot_water              :string
#  independent_suspension :string
#  priority               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  type_a                 :string
#  type_b                 :string
#  type_c                 :string
#  atm                    :string
#  tare                   :string
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

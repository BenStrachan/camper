# == Schema Information
#
# Table name: vehicles
#
#  id                        :integer          not null, primary key
#  vehicle_make              :string
#  vehicle_model_title       :string
#  vehicle_model_descritpion :string
#  start_year                :string
#  end_year                  :string
#  with_breaks               :string
#  ball_mass_max             :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class Vehicle < ApplicationRecord
end

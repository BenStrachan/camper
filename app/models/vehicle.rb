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
#  name                      :string
#

class Vehicle < ApplicationRecord
  after_validation :set_name

  private
  def set_name
    if vehicle_make_changed? || vehicle_model_title_changed?
      self.name = [vehicle_make.to_s.strip, vehicle_model_title.to_s.strip].join(" ")
    end
  end
end

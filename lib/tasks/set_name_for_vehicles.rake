namespace :db do
  task set_name_for_vehicles: :environment do
    Vehicle.find_each do |vehicle|
      vehicle.update name: [vehicle.vehicle_make.to_s.strip, vehicle.vehicle_model_title.to_s.strip].join(" ")
    end
  end
end

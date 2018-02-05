require 'test_helper'

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_url
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post vehicles_url, params: { vehicle: { body_type: @vehicle.body_type, conditions: @vehicle.conditions, end_year: @vehicle.end_year, gcm: @vehicle.gcm, gvm: @vehicle.gvm, rev: @vehicle.rev, roof_load: @vehicle.roof_load, start_year: @vehicle.start_year, vehicle_kerb_mass: @vehicle.vehicle_kerb_mass, vehicle_make: @vehicle.vehicle_make, vehicle_model_descritpion: @vehicle.vehicle_model_descritpion, vehicle_model_title: @vehicle.vehicle_model_title, vmltm_balll_mass: @vehicle.vmltm_balll_mass, vmltm_no_brakes: @vehicle.vmltm_no_brakes, vmltm_with_breaks: @vehicle.vmltm_with_breaks } }
    end

    assert_redirected_to vehicle_url(Vehicle.last)
  end

  test "should show vehicle" do
    get vehicle_url(@vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_url(@vehicle)
    assert_response :success
  end

  test "should update vehicle" do
    patch vehicle_url(@vehicle), params: { vehicle: { body_type: @vehicle.body_type, conditions: @vehicle.conditions, end_year: @vehicle.end_year, gcm: @vehicle.gcm, gvm: @vehicle.gvm, rev: @vehicle.rev, roof_load: @vehicle.roof_load, start_year: @vehicle.start_year, vehicle_kerb_mass: @vehicle.vehicle_kerb_mass, vehicle_make: @vehicle.vehicle_make, vehicle_model_descritpion: @vehicle.vehicle_model_descritpion, vehicle_model_title: @vehicle.vehicle_model_title, vmltm_balll_mass: @vehicle.vmltm_balll_mass, vmltm_no_brakes: @vehicle.vmltm_no_brakes, vmltm_with_breaks: @vehicle.vmltm_with_breaks } }
    assert_redirected_to vehicle_url(@vehicle)
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete vehicle_url(@vehicle)
    end

    assert_redirected_to vehicles_url
  end
end

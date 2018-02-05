require 'test_helper'

class CampersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camper = campers(:one)
  end

  test "should get index" do
    get campers_url
    assert_response :success
  end

  test "should get new" do
    get new_camper_url
    assert_response :success
  end

  test "should create camper" do
    assert_difference('Camper.count') do
      post campers_url, params: { camper: { 1000L_water: @camper.1000L_water, air_conditioning: @camper.air_conditioning, all_terrain_tyres: @camper.all_terrain_tyres, alloy_wheels: @camper.alloy_wheels, ball_weight: @camper.ball_weight, brand: @camper.brand, capacity: @camper.capacity, deep_cycle_batteries: @camper.deep_cycle_batteries, diesel_heating: @camper.diesel_heating, display_price: @camper.display_price, ensuite: @camper.ensuite, gvm: @camper.gvm, hot_water: @camper.hot_water, independent_suspension: @camper.independent_suspension, link: @camper.link, model: @camper.model, mud_tyres: @camper.mud_tyres, price_max: @camper.price_max, price_min: @camper.price_min, priority: @camper.priority, roof_rack: @camper.roof_rack, solar: @camper.solar, tv: @camper.tv, twin_spares: @camper.twin_spares, version: @camper.version } }
    end

    assert_redirected_to camper_url(Camper.last)
  end

  test "should show camper" do
    get camper_url(@camper)
    assert_response :success
  end

  test "should get edit" do
    get edit_camper_url(@camper)
    assert_response :success
  end

  test "should update camper" do
    patch camper_url(@camper), params: { camper: { 1000L_water: @camper.1000L_water, air_conditioning: @camper.air_conditioning, all_terrain_tyres: @camper.all_terrain_tyres, alloy_wheels: @camper.alloy_wheels, ball_weight: @camper.ball_weight, brand: @camper.brand, capacity: @camper.capacity, deep_cycle_batteries: @camper.deep_cycle_batteries, diesel_heating: @camper.diesel_heating, display_price: @camper.display_price, ensuite: @camper.ensuite, gvm: @camper.gvm, hot_water: @camper.hot_water, independent_suspension: @camper.independent_suspension, link: @camper.link, model: @camper.model, mud_tyres: @camper.mud_tyres, price_max: @camper.price_max, price_min: @camper.price_min, priority: @camper.priority, roof_rack: @camper.roof_rack, solar: @camper.solar, tv: @camper.tv, twin_spares: @camper.twin_spares, version: @camper.version } }
    assert_redirected_to camper_url(@camper)
  end

  test "should destroy camper" do
    assert_difference('Camper.count', -1) do
      delete camper_url(@camper)
    end

    assert_redirected_to campers_url
  end
end

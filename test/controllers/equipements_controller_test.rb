require 'test_helper'

class EquipementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipement = equipements(:one)
  end

  test "should get index" do
    get equipements_url
    assert_response :success
  end

  test "should get new" do
    get new_equipement_url
    assert_response :success
  end

  test "should create equipement" do
    assert_difference('Equipement.count') do
      post equipements_url, params: { equipement: { adresse: @equipement.adresse, cp: @equipement.cp, latitude: @equipement.latitude, longitude: @equipement.longitude, name: @equipement.name, type_equipement: @equipement.type_equipement, ville: @equipement.ville } }
    end

    assert_redirected_to equipement_url(Equipement.last)
  end

  test "should show equipement" do
    get equipement_url(@equipement)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipement_url(@equipement)
    assert_response :success
  end

  test "should update equipement" do
    patch equipement_url(@equipement), params: { equipement: { adresse: @equipement.adresse, cp: @equipement.cp, latitude: @equipement.latitude, longitude: @equipement.longitude, name: @equipement.name, type_equipement: @equipement.type_equipement, ville: @equipement.ville } }
    assert_redirected_to equipement_url(@equipement)
  end

  test "should destroy equipement" do
    assert_difference('Equipement.count', -1) do
      delete equipement_url(@equipement)
    end

    assert_redirected_to equipements_url
  end
end

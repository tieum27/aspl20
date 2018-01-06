require 'test_helper'

class ActiviteAquatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activite_aquatique = activite_aquatiques(:one)
  end

  test "should get index" do
    get activite_aquatiques_url
    assert_response :success
  end

  test "should get new" do
    get new_activite_aquatique_url
    assert_response :success
  end

  test "should create activite_aquatique" do
    assert_difference('ActiviteAquatique.count') do
      post activite_aquatiques_url, params: { activite_aquatique: { debut: @activite_aquatique.debut, equipement_id: @activite_aquatique.equipement_id, fin: @activite_aquatique.fin, jour: @activite_aquatique.jour, nom: @activite_aquatique.nom } }
    end

    assert_redirected_to activite_aquatique_url(ActiviteAquatique.last)
  end

  test "should show activite_aquatique" do
    get activite_aquatique_url(@activite_aquatique)
    assert_response :success
  end

  test "should get edit" do
    get edit_activite_aquatique_url(@activite_aquatique)
    assert_response :success
  end

  test "should update activite_aquatique" do
    patch activite_aquatique_url(@activite_aquatique), params: { activite_aquatique: { debut: @activite_aquatique.debut, equipement_id: @activite_aquatique.equipement_id, fin: @activite_aquatique.fin, jour: @activite_aquatique.jour, nom: @activite_aquatique.nom } }
    assert_redirected_to activite_aquatique_url(@activite_aquatique)
  end

  test "should destroy activite_aquatique" do
    assert_difference('ActiviteAquatique.count', -1) do
      delete activite_aquatique_url(@activite_aquatique)
    end

    assert_redirected_to activite_aquatiques_url
  end
end

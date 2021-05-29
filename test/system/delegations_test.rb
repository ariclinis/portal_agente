require "application_system_test_case"

class DelegationsTest < ApplicationSystemTestCase
  setup do
    @delegation = delegations(:one)
  end

  test "visiting the index" do
    visit delegations_url
    assert_selector "h1", text: "Delegations"
  end

  test "creating a Delegation" do
    visit delegations_url
    click_on "New Delegation"

    fill_in "Comuna", with: @delegation.comuna
    fill_in "Cp", with: @delegation.cp
    fill_in "Email", with: @delegation.email
    fill_in "Endereco", with: @delegation.endereco
    fill_in "Municipio", with: @delegation.municipio
    fill_in "Nome", with: @delegation.nome
    fill_in "Provincia", with: @delegation.provincia
    fill_in "Status", with: @delegation.status
    fill_in "Tel", with: @delegation.tel
    click_on "Create Delegation"

    assert_text "Delegation was successfully created"
    click_on "Back"
  end

  test "updating a Delegation" do
    visit delegations_url
    click_on "Edit", match: :first

    fill_in "Comuna", with: @delegation.comuna
    fill_in "Cp", with: @delegation.cp
    fill_in "Email", with: @delegation.email
    fill_in "Endereco", with: @delegation.endereco
    fill_in "Municipio", with: @delegation.municipio
    fill_in "Nome", with: @delegation.nome
    fill_in "Provincia", with: @delegation.provincia
    fill_in "Status", with: @delegation.status
    fill_in "Tel", with: @delegation.tel
    click_on "Update Delegation"

    assert_text "Delegation was successfully updated"
    click_on "Back"
  end

  test "destroying a Delegation" do
    visit delegations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delegation was successfully destroyed"
  end
end

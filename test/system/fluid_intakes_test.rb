require "application_system_test_case"

class FluidIntakesTest < ApplicationSystemTestCase
  setup do
    @fluid_intake = fluid_intakes(:one)
  end

  test "visiting the index" do
    visit fluid_intakes_url
    assert_selector "h1", text: "Fluid intakes"
  end

  test "should create fluid intake" do
    visit fluid_intakes_url
    click_on "New fluid intake"

    fill_in "Amount ml", with: @fluid_intake.amount_ml
    fill_in "Intake time", with: @fluid_intake.intake_time
    fill_in "Intake type", with: @fluid_intake.intake_type
    fill_in "Name", with: @fluid_intake.name
    click_on "Create Fluid intake"

    assert_text "Fluid intake was successfully created"
    click_on "Back"
  end

  test "should update Fluid intake" do
    visit fluid_intake_url(@fluid_intake)
    click_on "Edit this fluid intake", match: :first

    fill_in "Amount ml", with: @fluid_intake.amount_ml
    fill_in "Intake time", with: @fluid_intake.intake_time
    fill_in "Intake type", with: @fluid_intake.intake_type
    fill_in "Name", with: @fluid_intake.name
    click_on "Update Fluid intake"

    assert_text "Fluid intake was successfully updated"
    click_on "Back"
  end

  test "should destroy Fluid intake" do
    visit fluid_intake_url(@fluid_intake)
    click_on "Destroy this fluid intake", match: :first

    assert_text "Fluid intake was successfully destroyed"
  end
end

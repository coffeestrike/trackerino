require "application_system_test_case"

class FoodIntakesTest < ApplicationSystemTestCase
  setup do
    @food_intake = food_intakes(:one)
  end

  test "visiting the index" do
    visit food_intakes_url
    assert_selector "h1", text: "Food intakes"
  end

  test "should create food intake" do
    visit food_intakes_url
    click_on "New food intake"

    fill_in "Calories", with: @food_intake.calories
    fill_in "Intake time", with: @food_intake.intake_time
    fill_in "Intake type", with: @food_intake.intake_type
    fill_in "Name", with: @food_intake.name
    click_on "Create Food intake"

    assert_text "Food intake was successfully created"
    click_on "Back"
  end

  test "should update Food intake" do
    visit food_intake_url(@food_intake)
    click_on "Edit this food intake", match: :first

    fill_in "Calories", with: @food_intake.calories
    fill_in "Intake time", with: @food_intake.intake_time
    fill_in "Intake type", with: @food_intake.intake_type
    fill_in "Name", with: @food_intake.name
    click_on "Update Food intake"

    assert_text "Food intake was successfully updated"
    click_on "Back"
  end

  test "should destroy Food intake" do
    visit food_intake_url(@food_intake)
    click_on "Destroy this food intake", match: :first

    assert_text "Food intake was successfully destroyed"
  end
end

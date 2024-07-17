require "test_helper"

class FoodIntakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_intake = food_intakes(:one)
  end

  test "should get index" do
    get food_intakes_url
    assert_response :success
  end

  test "should get new" do
    get new_food_intake_url
    assert_response :success
  end

  test "should create food_intake" do
    assert_difference("FoodIntake.count") do
      post food_intakes_url, params: { food_intake: { calories: @food_intake.calories, intake_time: @food_intake.intake_time, intake_type: @food_intake.intake_type, name: @food_intake.name } }
    end

    assert_redirected_to food_intake_url(FoodIntake.last)
  end

  test "should show food_intake" do
    get food_intake_url(@food_intake)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_intake_url(@food_intake)
    assert_response :success
  end

  test "should update food_intake" do
    patch food_intake_url(@food_intake), params: { food_intake: { calories: @food_intake.calories, intake_time: @food_intake.intake_time, intake_type: @food_intake.intake_type, name: @food_intake.name } }
    assert_redirected_to food_intake_url(@food_intake)
  end

  test "should destroy food_intake" do
    assert_difference("FoodIntake.count", -1) do
      delete food_intake_url(@food_intake)
    end

    assert_redirected_to food_intakes_url
  end
end

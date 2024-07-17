require "test_helper"

class FluidIntakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fluid_intake = fluid_intakes(:one)
  end

  test "should get index" do
    get fluid_intakes_url
    assert_response :success
  end

  test "should get new" do
    get new_fluid_intake_url
    assert_response :success
  end

  test "should create fluid_intake" do
    assert_difference("FluidIntake.count") do
      post fluid_intakes_url, params: { fluid_intake: { amount_ml: @fluid_intake.amount_ml, intake_time: @fluid_intake.intake_time, intake_type: @fluid_intake.intake_type, name: @fluid_intake.name } }
    end

    assert_redirected_to fluid_intake_url(FluidIntake.last)
  end

  test "should show fluid_intake" do
    get fluid_intake_url(@fluid_intake)
    assert_response :success
  end

  test "should get edit" do
    get edit_fluid_intake_url(@fluid_intake)
    assert_response :success
  end

  test "should update fluid_intake" do
    patch fluid_intake_url(@fluid_intake), params: { fluid_intake: { amount_ml: @fluid_intake.amount_ml, intake_time: @fluid_intake.intake_time, intake_type: @fluid_intake.intake_type, name: @fluid_intake.name } }
    assert_redirected_to fluid_intake_url(@fluid_intake)
  end

  test "should destroy fluid_intake" do
    assert_difference("FluidIntake.count", -1) do
      delete fluid_intake_url(@fluid_intake)
    end

    assert_redirected_to fluid_intakes_url
  end
end

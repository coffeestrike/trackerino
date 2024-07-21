class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: Rails.application.credentials.name, password: Rails.application.credentials.password

  before_action :set_today_stats

  private
  def set_today_stats
    @fluid_intakes = FluidIntake.all.today.order(intake_time: :desc)
    @food_intakes = FoodIntake.all.today.order(intake_time: :desc)
    @today_stats = {
      total_amount_ml: @fluid_intakes.sum(:amount_ml),
      total_calories: @food_intakes.sum(:calories),
    }
  end
end

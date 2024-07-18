class HomeController < ApplicationController
  def index
    @fluid_intakes = FluidIntake.all.order(created_at: :desc).limit(10)
    @food_intakes = FoodIntake.all.order(created_at: :desc).limit(10)
  end
end

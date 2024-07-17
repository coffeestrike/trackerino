class HomeController < ApplicationController
  def index
    @fluid_intakes = FluidIntake.all
    @food_intakes = FoodIntake.all
  end
end

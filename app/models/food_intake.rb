class FoodIntake < ApplicationRecord
  CALORIES = %w(50 100 200 300 400 500 600 700 800 900 1000)

  validates_presence_of :name, :calories
end

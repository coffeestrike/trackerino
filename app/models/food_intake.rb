class FoodIntake < ApplicationRecord
  scope :today, -> { where(intake_time: Time.zone.now.all_day) }

  validates_presence_of :name, :calories
end

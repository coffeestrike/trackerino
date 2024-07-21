class FluidIntake < ApplicationRecord
  scope :today, -> { where(intake_time: Time.zone.now.all_day) }

  validates_presence_of :name, :amount_ml
end

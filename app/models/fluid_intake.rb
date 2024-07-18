class FluidIntake < ApplicationRecord
  NAMES = [
    "Water",
    "Coffee",
    "100Plus",
    "Soft Drink",
    "Green Tea",
  ]

  validates_presence_of :name, :amount_ml
end

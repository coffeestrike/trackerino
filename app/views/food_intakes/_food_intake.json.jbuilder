json.extract! food_intake, :id, :name, :intake_type, :intake_time, :calories, :created_at, :updated_at
json.url food_intake_url(food_intake, format: :json)

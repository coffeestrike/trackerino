class CreateFoodIntakes < ActiveRecord::Migration[7.1]
  def change
    create_table :food_intakes do |t|
      t.string :name
      t.string :intake_type
      t.datetime :intake_time
      t.integer :calories

      t.timestamps
    end
  end
end

class CreateFluidIntakes < ActiveRecord::Migration[7.1]
  def change
    create_table :fluid_intakes do |t|
      t.string :name
      t.string :intake_type
      t.datetime :intake_time
      t.integer :amount_ml

      t.timestamps
    end
  end
end

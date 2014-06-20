class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :routine_id
      t.integer :exercise_id
      t.float :start_weight
      t.float :weight_increment
      t.json :set_reps

      t.timestamps
    end
  end
end

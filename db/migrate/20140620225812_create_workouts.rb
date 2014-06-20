class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :routine_id
      t.date :date
      t.text :notes

      t.timestamps
    end
  end
end

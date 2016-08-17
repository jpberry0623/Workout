class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|

      t.string :name
      t.string :days_of_week
      t.string :goal
      t.references :user

      t.timestamps null: false
    end
  end
end

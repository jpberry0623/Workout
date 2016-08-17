class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|

      t.string :name
      t.string :bodypart_worked
      t.string :sets
      t.string :reps
      t.string :rest_time
      t.string :tempo

      t.references :workout

      t.timestamps null: false
    end
  end
end

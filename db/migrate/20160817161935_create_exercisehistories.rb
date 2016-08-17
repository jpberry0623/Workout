class CreateExercisehistories < ActiveRecord::Migration
  def change
    create_table :exercisehistories do |t|

      t.string :name
      t.string :sets
      t.string :reps
      t.string :weight
      t.string :tempo
      t.string :rest

      t.references :exercise
      t.references :workout

      t.timestamps
    end
  end
end

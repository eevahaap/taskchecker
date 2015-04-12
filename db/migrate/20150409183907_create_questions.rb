class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :q4
      t.string :q5
      t.string :question_name
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.string :ans4
      t.string :ans5
      t.integer :schoolclass_id

      t.timestamps null: false
    end
  end
end

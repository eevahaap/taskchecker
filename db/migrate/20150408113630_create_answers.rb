class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :username
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.string :ans4
      t.string :ans5
      t.integer :res1
      t.integer :res2
      t.integer :res3
      t.integer :res4
      t.integer :res5
      t.integer :total_res

      t.timestamps null: false
    end
  end
end

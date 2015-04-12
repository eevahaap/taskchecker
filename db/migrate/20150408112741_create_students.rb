class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :school_class

      t.timestamps null: false
    end
  end
end

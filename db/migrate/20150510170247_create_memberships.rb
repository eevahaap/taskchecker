class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :teacher_id
      t.integer :class_id

      t.timestamps null: false
    end
  end
end

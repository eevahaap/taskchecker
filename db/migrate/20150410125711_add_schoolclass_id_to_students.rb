class AddSchoolclassIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :schoolclass_id, :integer
  end
end

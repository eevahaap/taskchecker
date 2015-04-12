class RemoveSchoolclassFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :schoolclass, :string
  end
end

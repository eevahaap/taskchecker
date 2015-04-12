class RemoveSchoolClassFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :school_class, :string
  end
end

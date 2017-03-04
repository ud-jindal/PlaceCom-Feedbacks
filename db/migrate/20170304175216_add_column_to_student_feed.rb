class AddColumnToStudentFeed < ActiveRecord::Migration
  def change
  	add_column :student_feeds, :focus, :string
  end
end

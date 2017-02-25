class ChangeDataTypeForStudentFeeds < ActiveRecord::Migration
  def change
	change_column :student_feeds, :phone_no, :string
  end
end

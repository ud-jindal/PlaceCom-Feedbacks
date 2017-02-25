class ChangeDataType2ForStudentFeeds < ActiveRecord::Migration
  def change
  	change_column :student_feeds, :stream, :string
  end
end

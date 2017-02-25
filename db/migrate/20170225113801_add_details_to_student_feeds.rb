class AddDetailsToStudentFeeds < ActiveRecord::Migration
  def change
    add_column :student_feeds, :name, :string
    add_column :student_feeds, :stream, :integer
    add_column :student_feeds, :phone_no, :integer
  end
end

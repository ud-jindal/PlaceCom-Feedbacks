class DropCompaniesStudentFeed < ActiveRecord::Migration
  def change
  	drop_table :companies_student_feeds
  end
end

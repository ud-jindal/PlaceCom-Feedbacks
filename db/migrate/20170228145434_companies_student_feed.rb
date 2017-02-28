class CompaniesStudentFeed < ActiveRecord::Migration
  def change
  	create_table :companies_student_feed, :id => false do |t|
      t.integer :company_id
      t.integer :student_feed_id
  	end
      drop_table :student_feeds_companies
  end
end

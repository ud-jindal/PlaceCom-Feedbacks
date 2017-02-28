class CompaniesStudentFeeds2 < ActiveRecord::Migration
  def change
  	create_table :companies_student_feeds, :id => false do |t|
      t.integer :company_id
      t.integer :student_feed_id
  	end
      drop_table :companies_student_feed
  end
end

class CompaniesStudentFeeds < ActiveRecord::Migration
  def change
  	create_table :student_feeds_companies, :id => false do |t|
      t.integer :company_id
      t.integer :student_feed_id
    end
  end
end

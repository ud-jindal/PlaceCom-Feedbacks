class CreateStudentReviews < ActiveRecord::Migration
  def change
    create_table :student_reviews do |t|
      t.integer :company_id
      t.references :student_feed, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateStudentFeeds < ActiveRecord::Migration
  def change
    create_table :student_feeds do |t|
      t.string :rollno
      t.string :email
      t.integer :year
      t.text :feeback
      t.string :companyname
      t.integer :company_id
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

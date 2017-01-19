class CreateCompanyReviews < ActiveRecord::Migration
  def change
    create_table :company_reviews do |t|
      t.string :name
      t.integer :year
      t.text :feedback
      t.integer :company_id
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :compname
      t.string :contactname
      t.string :email
      t.string :phone
      t.string :domain
      t.integer :years
      t.integer :rating
      t.integer :compensation_to_tier1
      t.text :remark
      t.boolean :established_startup
      t.string :iiitb_share
      t.timestamps null: false
    end
  end
end

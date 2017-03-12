class CreateCompanyData < ActiveRecord::Migration
  def change
    create_table :company_data do |t|
      t.string :name
      t.string :contact_name
      t.string :email
      t.string :phone_no
      t.string :domain
      t.integer :years
      t.integer :rating
      t.integer :compensation_to_tier1
      t.text :remark
      t.boolean :established_startup
      t.text :iiitb_share
      t.integer :no_of_alumni_in_company

      t.timestamps null: false
    end
  end
end

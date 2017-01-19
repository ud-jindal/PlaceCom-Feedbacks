class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :compname
      t.string :contactname
      t.string :email
      t.integer :phone
      t.text :remark

      t.timestamps null: false
    end
  end
end

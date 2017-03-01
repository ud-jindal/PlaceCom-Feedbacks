class DropSelectCompany < ActiveRecord::Migration
  def change
  	#drop_table :select_companies
  	drop_table :users
  end

end

class StudentFeed < ActiveRecord::Base
  has_and_belongs_to_many :companies
  validates :rollno, presence: true
  validates :email, presence: true, 
  email_format: { message: "doesn't look like an email address" }
  validates :year, presence: true, 
  			length: {is: 4}
  validates :feeback, presence: true
  #validates :company_id, presence: true
  validates :name, presence: true
  #validates :companyname, inclusion: {in Article.all}			
end

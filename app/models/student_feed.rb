class StudentFeed < ActiveRecord::Base
  belongs_to :company
  validates :rollno, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, 
  email_format: { message: "doesn't look like an email address" }
  validates :year, presence: true, 
  			length: {is: 4}
  validates :feeback, presence: true
  validates :company_id, presence: true
  validates :name, presence: true
  #validates :companyname, inclusion: {in Article.all}			
end

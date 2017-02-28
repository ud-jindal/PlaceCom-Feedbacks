class Company < ActiveRecord::Base
	has_and_belongs_to_many :student_feeds
	has_many :company_review
end

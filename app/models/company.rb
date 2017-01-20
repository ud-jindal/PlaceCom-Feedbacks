class Company < ActiveRecord::Base
	has_many :student_feeds
	has_many :company_review
end

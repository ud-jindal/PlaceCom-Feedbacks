class CompanyReviewsController < ApplicationController
	def show
	end
	def index
		@companyreviews= CompanyReview.all
	end
end

class StudentReviewsController < ApplicationController
	def index
		@company= Company.all
		begin
    		@studentreview= StudentReview.new(post_params)
    		@user= StudentFeed.where(company_id: @studentreview.company_id)
    	rescue
    		@studentreview= StudentReview.new
    		@user= StudentFeed.all
    	end
	end
	def post_params
  		params.require(:student_review).permit(:company_id )
  	end

end

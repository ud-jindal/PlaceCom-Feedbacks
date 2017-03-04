class StudentReviewsController < ApplicationController
	def index
		@company= Company.all
		begin
    		@studentreview= StudentReview.new(post_params)
    		@user1= Company.find(@studentreview.company_id)
        @user= @user1.student_feeds #.paginate(page: params[:page], per_page: 6)

    	rescue
    		@studentreview= StudentReview.new
    		@user= StudentFeed.all #.paginate(page: params[:page], per_page: 6)
    	end
	end
	def post_params
  		params.require(:student_review).permit(:company_id )
  	end

end

class StudentFeedsController < ApplicationController
  def index
    @students= StudentFeed.all
  end
  def new
    @student= StudentFeed.new
  	@company= Company.all
  end
  def create
  	@studentfeed= StudentFeed.new(post_params)
  	@studentfeed.save
  	redirect_to url: {action: "new"}
  end
  def show
  end

  private def post_params
  	params.require(:student_feed).permit(:rollno, :email, :year, :feeback, :company_id  )
  end

end

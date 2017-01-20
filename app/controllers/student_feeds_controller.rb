class StudentFeedsController < ApplicationController
  def index
    @studentfeeds= StudentFeed.all
  end
  def new
    @studentfeed= StudentFeed.new
  	@company= Company.all
  end
  def create
  	@studentfeed= StudentFeed.new(post_params)

    respond_to do |format|
      if @studentfeed.save
        @studentfeed.companyname= Company.find(@studentfeed.company_id).compname
        @studentfeed.save
        format.html { redirect_to :action =>'index', notice: 'User was successfully created.' }
        #format.json { render :index, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @studentfeed.errors, status: :unprocessable_entity }
      end

    end
  end
  def show
  end

  private def post_params
  	params.require(:student_feed).permit(:rollno, :email, :year, :feeback, :company_id  )
  end

end

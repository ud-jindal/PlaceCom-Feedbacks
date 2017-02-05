class StudentFeedsController < ApplicationController
  before_action :set_studentfeed, only: [:show]  
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
        flash[:notice] = "Widget was successfully created."
        format.html { redirect_to :action =>'index'}
      else
        format.html { render :new }
        format.json { render json: @studentfeed.errors, status: :unprocessable_entity }
      end

    end
  end
  def show
  end

  private
  def set_studentfeed
    @studentfeed= StudentFeed.find(params[:id]) 
  end
  def post_params
  	params.require(:student_feed).permit(:rollno, :email, :year, :feeback, :company_id  )
  end

end

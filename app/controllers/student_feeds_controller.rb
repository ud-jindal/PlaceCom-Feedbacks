class StudentFeedsController < ApplicationController
  before_action :set_studentfeed, only: [:show]  
  def new
    @studentfeed= StudentFeed.new
  	@company1= Company.all
    @company= @company1.select("id, compname")

  end
  def create
  	@studentfeed= StudentFeed.new(post_params)
    @company= Company.all
    respond_to do |format|
      if @studentfeed.save
        #@studentfeed.companyname= Company.find(@studentfeed.company_id).compname
        @studentfeed.save
        flash[:notice] = "Widget was successfully created."
        format.html { redirect_to student_reviews_index_url}
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
  	params.require(:student_feed).permit(:rollno, :email, :year, :feeback,  :name, :stream, :phone_no, :focus, company_ids: []  )
  end

end

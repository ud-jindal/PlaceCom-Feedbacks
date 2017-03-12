class CompanyReviewsController < ApplicationController
  before_action :set_companyreview, only: [:show]
	def index
		@company= Company.order(:compname)
		begin
    		@companyreview= CompanyReview.new(post_params)
    		@user= CompanyReview.where(company_id: @companyreview.company_id)
    	rescue
    		@companyreview= CompanyReview.new
    		@user= CompanyReview.all
    	end
	end
	def post_params
  		params.require(:company_review).permit(:company_id )
  end
  def show
  end
  def set_companyreview
    @companyreview= CompanyReview.find(params[:id]) 
  end

end

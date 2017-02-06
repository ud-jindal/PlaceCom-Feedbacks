class WelcomeController < ApplicationController
  #layout 'standard'
 	def index
		@company= Company.all
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

end

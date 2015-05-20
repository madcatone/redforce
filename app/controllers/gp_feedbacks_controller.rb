class GpFeedbacksController < ApplicationController
	def index
		@gp_feedbacks = GpFeedback.order('comment_time desc')\
		.where(:catalog => "cons")\
		.paginate(:page => params[:page], :per_page => 10)
	end
end

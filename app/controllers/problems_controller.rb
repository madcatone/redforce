require 'mixpanel-ruby'

class ProblemsController < ApplicationController
	# Tracks an event, 'Sent Message',
	# with distinct_id user_id
	#tracker.track(user_id, 'Sent Message')

	# You can also include properties to describe
	# the circumstances of the event
	#tracker.track(user_id, 'Plan Upgraded', {
	#    'Old Plan' => 'Business',
	#    'New Plan' => 'Premium'
	#})
	def index
		tracker = Mixpanel::Tracker.new('638e44e63f498e5ca16c952a7fff0e27')
		#@journals_1 = Journal.order('created_at desc').where("journal_type = 1")
		#@journals_2 = Journal.order('created_at desc').where("journal_type = 2")

		##@problems = Problem.paginate(:page => params[:page], :per_page => 10).limit(30)
		@problems = Problem.order('p_date desc')\
		.paginate(:page => params[:page], :per_page => 10)
		if user_signed_in?
			tracker.track(current_user.email,'View')
		else
			tracker.track("Guest Login",'View')
		end
		##.where(:p_date => "2015-02-01".to_date.."2015-02-05".to_date)\
	end
	def cons
		@problems = Problem.order('p_date desc')\
		.where(:p_type => "cons")\
		.paginate(:page => params[:page], :per_page => 10)
		render :show
	end
	def pros
		@problems = Problem.order('p_date desc')\
		.where(:p_type => "pros")\
		.paginate(:page => params[:page], :per_page => 10)
		render :show
	end
	def spam
		@problems = Problem.order('p_date desc')\
		.where(:p_type => "spam")\
		.paginate(:page => params[:page], :per_page => 10)
		render :show
	end
end

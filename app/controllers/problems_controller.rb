class ProblemsController < ApplicationController

	def index
		#@journals_1 = Journal.order('created_at desc').where("journal_type = 1")
		#@journals_2 = Journal.order('created_at desc').where("journal_type = 2")
		@problems = Problem.all
	end
end

class OtherProblem < ActiveRecord::Base
	establish_connection "problem_database_development"
	self.table_name = "2015-01-20_problem_mail_cons"
end
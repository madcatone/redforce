class Problem < ActiveRecord::Base
	establish_connection "problem_database_development"
	self.table_name = "problem_mail"
end

#class Problem < OtherProblem
#end

class JournalsController < ApplicationController

	def index
		@journals_1 = Journal.order('created_at desc').where("journal_type = 1")
		@journals_2 = Journal.order('created_at desc').where("journal_type = 2")
	end
	def jlist
		@journals = Journal.all
	end
	def show
		@journal = Journal.find(params[:id])
	end	
	def new
		@journal = Journal.new
	end
	def edit
		@journal = Journal.find(params[:id])
	end
	def create
		@journal = Journal.new(journal_params)
      	if @journal.save
      		redirect_to journals_path
      	else
      		#validate
      		render :new
      	end
	end

	def update
		@journal = Journal.find(params[:id])
    	if @journal.update(journal_params)
      		redirect_to journal_path(@journal)
    	else
      		render :edit
      	end
	end
	def destroy
		@journal = Journal.find(params[:id])
    	@journal.destroy
      		redirect_to journals_path
	end

	def journal_params
		params.require(:journal).permit(:journal_type, :description, :title, :author ,:profile_id)
	end
end

class ProfilesController < ApplicationController
	def greeting
	end
	def index
		#@journals_1 = Journal.order('created_at desc').where("journal_type = 1")
		#@journals_2 = Journal.order('created_at desc').where("journal_type = 2")
		@profiles = Profile.all.order('created_at desc')
	end
	def plist
		@profiles = Profile.all.order('created_at desc')
	end
	def show
		@profile = p = Profile.find(params[:id])
		@journals_1 = p.journals.where("journal_type = 1").order('created_at desc')
		@journals_2 = p.journals.where("journal_type = 2").order('created_at desc')
	end	
	def new
		@profile = Profile.new
	end
	def edit
		@profile = Profile.find(params[:id])
	end
	def create
		@profile = Profile.new(profile_params)
      	if @profile.save
      		redirect_to profiles_path
      	else
      		#validate
      		render :new
      	end
	end

	def update
		@profile = Profile.find(params[:id])
    	if @profile.update(profile_params)
      		redirect_to profile_path(@profile)
    	else
      		render :edit
      	end
	end
	def destroy
		@profile = Profile.find(params[:id])
    	@profile.destroy
      		redirect_to profiles_path
	end

	def profile_params
		params.require(:profile).permit(:name, :title, :tel, :email, :office_room, :lab_room)
	end
end

class GroupsController < ApplicationController
	#before_filter :open_door , :except => [:index , :open_sesame , :close_sesame, :addlist]
	#before_filter :open_door , :only => :open_sesame ,:only => :close_sesame
	#before_filter :open_door, :open_sesame, :close_sesame, :only => [:index, :show, :new, :edit, :create]
	def open_door
		#cookies[:open_sesame] == "1" ? cookies[:open_sesame] = "0" : cookies[:open_sesame] = "1"
		if cookies[:open_sesame] == "1"
			render :text => 'There is a spoon' 
			#render :index
			#redirect_to groups_path
		elsif cookies[:open_sesame] == "0"
			#render :text => 'There is no spoon' 
			#redirect_to groups_path
			
		else
			render :text => 'Weeeeeeeeeeeee~' 
			flash[:error] = "You must be logged in to access this section"
		end
	end
	def open_sesame
		cookies[:open_sesame] == "1" ? cookies[:open_sesame] = "0" : cookies[:open_sesame] = "1"
		
		#cookies[:open_sesame] = "1"
		render :text => 'OPEN!' 
	end
	def close_sesame
		cookies[:open_sesame] = "0"
		render :text => 'CLOSE!' 
	end
	def index
		@groups = Group.all
	end

	def show
		@group = Group.find(params[:id])
	end

	def new
		@group = Group.new
	end
	  
	def edit
		@group = Group.find(params[:id])
	end

	def create
		@group = Group.new(group_params)
      	if @group.save

      		redirect_to groups_path
      	else
      		#validate
      		render :new
      	end
	end

	def update
		@group = Group.find(params[:id])

    	if @group.update(group_params)
      		redirect_to group_path(@group)
    	else
      		render :edit
      	end
	end

	def destroy
		@group = Group.find(params[:id])

    	@group.destroy

      		redirect_to groups_path
	end

	def addlist
		@groups = Group.all
	end
	
	def list
		@groups = Group.all
	end

	private

  	def group_params
    	params.require(:group).permit(:title, :description, :location, :mainloc, :level, :gpname, :comment, :nickname)
  	end  
end

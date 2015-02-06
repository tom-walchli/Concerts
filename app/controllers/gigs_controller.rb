require 'time'

class GigsController < ApplicationController

	def home
		start_time	= Time.new
		end_time  	= start_time + 1.week
		@gigs 		= Gig.get_in_range(start_time, end_time)
	end

	def index
		@list_length = 20
		@gigs 		 = Gig.get_all(@list_length)
		if @gigs.count < @list_length
			@list_length = @gigs.count
		end
	end

	def show
		@gig 	= Gig.find params[:id]
	end	

	def new
		@gig 	= Gig.new
	end

	def create
		@gig 	= Gig.new gig_params

		if @gig.save
			redirect_to action: 'index', controller: 'gigs', notice: "New Gig added"
		else 
			render 'new', alert: "Failed!"
		end
	end

	def edit
		@gig 	= Gig.find params[:id]
	end

	def update
		@gig 	= Gig.find params[:id]

		if @gig.update_attributes gig_params
			redirect_to action: 'index', controller: 'gigs'
		else 
			flash[:alert] = "Failed!"
			render 'edit'
		end
	end

	def destroy
		@gig 	= Gig.find params[:id]

		if @gig.destroy 
			redirect_to action: 'index', controller: 'gigs'
		else 
			flash[:alert] = "Failed!"
  		end
	end

	def search
		@query = params[:query]
		@gigs = Gig.search(@query)
		render 'search'
	end


	private

	def gig_params
		params.require(:gig).permit(:venue, :city, :price, :description, :date, :artist)
	end

end

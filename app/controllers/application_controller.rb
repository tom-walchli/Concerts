class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	before_action :sidebar

	private def sidebar
		start_time	= Time.new
		end_time  	= start_time + 1.month
		@gigs_month = Gig.get_in_range(start_time, end_time)
	end


end

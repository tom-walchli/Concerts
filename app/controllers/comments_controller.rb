class CommentsController < ApplicationController

	def index
		@gig 		= Gig.find params[:gig_id]
		@comments 	= @gig.comments
	end

	def show
		@gig 		= Gig.find params[:gig_id]
		@comment 	= @gig.comments.find params[:id]
	end	

	def new
		@gig 		= Gig.find params[:gig_id]
		@comment 	= @gig.comments.new
	end

	def create
		@gig 		= Gig.find params[:gig_id]
		@comment 	= @gig.comments.new comment_params

		if @comment.save
			redirect_to action: 'show', controller: 'gigs', gig_id: @gig.id, notice: "New comment added"
		else 
			flash[:alert] = "Failed!"
			render 'new'
		end
	end

	def edit
		@gig 		= Gig.find params[:gig_id]
		@comment 	= @gig.comments.find params[:id]
	end

	def update
		@gig 		= Gig.find params[:gig_id]
		@comment 	= @gig.comments.find params[:id]

		if @comment.update_attributes comment_params
			redirect_to action: 'show', controller: 'gigs', gig_id: @gig.id, notice: "Comment updated"
		else 
			flash[:alert] = "Failed!"
			render 'edit'
		end
	end

	def destroy
		@gig 		= Gig.find params[:gig_id]
		@comment 	= @gig.comments.find params[:id]

		if @comment.destroy 
			redirect_to action: 'show', controller: 'gigs', gig_id: @gig.id
		else 
			flash[:alert] = "Failed!"
  		end
	end


	private

	def comment_params
		params.require(:comment).permit(:title, :content, :rating)
	end

end



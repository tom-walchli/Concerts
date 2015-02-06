class CommmentsAddGigId < ActiveRecord::Migration
  def change
	  add_column :comments, :gig_id, :integer
  end
end

class AddArtist < ActiveRecord::Migration
  def change
  	  add_column :gigs, :artist, :text
  end
end

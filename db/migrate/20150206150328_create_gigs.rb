class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
    	t.text :description
    	t.text :venue
    	t.text :city
    	t.float :price
    	t.timestamp :date
    	t.timestamps null: false
    end
  end
end

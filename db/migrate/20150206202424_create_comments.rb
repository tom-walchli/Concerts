class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text		:title
    	t.text 		:content
    	t.integer	:rating
    	t.timestamps null: false
    end
  end
end

class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
    	t.string 	:foodname
    	t.integer   :price
    	t.integer   :store_id
    	t.integer   :foodtype

      t.timestamps
    end
  end
end

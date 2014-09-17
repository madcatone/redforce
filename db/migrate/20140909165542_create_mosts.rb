class CreateMosts < ActiveRecord::Migration
  def change
    create_table :mosts do |t|
    	t.string :project_name
    	t.string :start_date
    	t.string :end_date
    	t.string :project_no
    	t.integer :profile_id

      t.timestamps
    end
  end
end
